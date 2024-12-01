library ieee;
use ieee.std_logic_1164.all;
entity reg is
    generic(WIDTH : positive);
    port(clk    : in  std_logic;
         rst    : in  std_logic;
         en     : in  std_logic;
         input  : in  std_logic_vector(WIDTH-1 downto 0);
         output : out std_logic_vector(WIDTH-1 downto 0));
end reg;
architecture BHV of reg is
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            output <= (others => '0');
        elsif (rising_edge(clk)) then
            if (en = '1') then
                output <= input;
            end if;
        end if;       
    end process;
end BHV;


library ieee;
use ieee.std_logic_1164.all;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter is
	port(
		clk: in std_logic;
		rst: in std_logic;
		tick: in std_logic;
		back_tick: in std_logic;
		go : in std_logic;
		size : in std_logic_vector (16 downto 0);
		full : out std_logic;
		empty : out std_logic;
		count : out std_logic_vector (16 downto 0)
		);
end counter;

architecture BHV of counter is
	--counter for done
	signal size_r: std_logic_vector(size'range);
	signal counter: std_logic_vector (16 downto 0) := (others=>'0');
	type state_type is (S_INIT, S_EXECUTE);
	signal counter_state :state_type:= S_INIT;
begin
    process(clk,rst)
    begin
       if (rst = '1') then
            counter <= (others=>'0');
            counter_state    <= S_INIT;
       elsif (clk'event and clk = '1') then
           case counter_state is
               when S_INIT =>
					counter <= (others=>'0');
					if( go = '1') then
						size_r <= size;
						counter_state <= S_EXECUTE;
					end if;
               when S_EXECUTE =>
                   if (tick = '1' and back_tick = '0') then
                       counter <= std_logic_vector(to_unsigned(to_integer(unsigned(counter)) + 1,counter'length ));         
                   elsif (back_tick = '1'and tick = '0') then
                       counter <= std_logic_vector(to_unsigned(to_integer(unsigned(counter)) - 1, counter'length));         
                   end if;
              when others => null;
             end case;
       end if;
      end process;
      
      process(counter)
      begin
        if( unsigned(size_r) <= unsigned(counter)) then                    
            empty <= '0';
            full <= '1';
        else
                full <= '0';
                empty <= '1';
        end if;
      end process;
      count <= counter;
end BHV;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;

entity new_buffer is
    generic 
    (
    inverse_output : std_logic;
    input_width : positive;
    num_inputs   : positive
    );
    port
    (
    clk : std_logic;
    rst : std_logic ;
    go : std_logic;
    din  : in std_logic_vector(input_width-1 downto 0);
    dout : out std_logic_vector(input_width-1 downto 0);
    wr_en  : in std_logic;
    rd_en : in std_logic;
    output_en: in std_logic;
    full : out  std_logic;
    empty : out  std_logic;
    output: out std_logic_vector(input_width *num_inputs -1 downto 0);
    output_valid: out std_logic
    );
end new_buffer;

architecture STR of new_buffer is
    type output_array_t is array(integer range<>) of std_logic_vector(input_width -1 downto 0);
      -- put inputs into a big vector (i.e., "vectorize")
    signal output_array         : output_array_t(0 to num_inputs - 1);
    signal i : integer :=0;
    signal count: std_logic_vector (16 downto 0);
begin
    REG_IN :entity work.reg
        generic map (WIDTH => input_width)
        port map (
                    clk    => clk,
                    rst    => rst,
                    en     => wr_en,
                    input  => din,
                    output => output_array(0)
     );

    U_REGS : for i in 1 to num_inputs-1 generate
        U_REG : entity work.reg
                generic map (WIDTH => input_width)
                port map (
                    clk    => clk,
                    rst    => rst,
                    en     => wr_en,
                    input  => output_array(i - 1),
                    output => output_array(i)
                    );
    end generate;
    
    U_OUTPUT : if inverse_output = '0' generate 
        U_OUTPUT_VECTORIZE : for i in 0 to num_inputs-1 generate
            output((i+1)*input_width-1 downto i*input_width) <= output_array(i);
        end generate;
    end generate;
    
    U_OUTPUT_INVERSE : if inverse_output = '1' generate 
        U_OUTPUT_VECTORIZE : for i in 0 to num_inputs-1 generate
            output((i+1)*input_width-1 downto i*input_width) <= output_array(num_inputs-1 - i);
        end generate;
    end generate;
    
    U_COUNTER: entity work.counter(BHV)
	port map(
		clk=> clk,
		rst=> rst,
		tick => wr_en,
		back_tick=> rd_en,
		go => '1',
		size => std_logic_vector(to_unsigned(num_inputs, 17)),
		full => full,
		empty => empty,
		count => count
		);
	
	process(rd_en)
	begin
	   
	   if (rd_en  = '1') then
	       dout <= output_array(to_integer(unsigned(count))-1);
	   end if;
	end process;
	
	process(output_en)
	begin
	   if (output_en  = '1') then
	    output_valid <= '1';
	   else 
	    output_valid <= '0';
	   end if;
	end process;
	
end STR;