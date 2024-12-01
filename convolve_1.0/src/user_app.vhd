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



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;
use ieee.math_real.all;
use work.math_custom.all;

entity user_app is
    port (
        clk : in std_logic;
        rst : in std_logic;

        -- Memory-map interface
        mmap_wr_en   : in  std_logic;
        mmap_wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        mmap_rd_en   : in  std_logic;
        mmap_rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- DMA read interface for RAM 0
        ram0_rd_rd_en : out std_logic;
        ram0_rd_go    : out std_logic;
        ram0_rd_valid : in  std_logic;
        ram0_rd_data  : in  std_logic_vector(RAM0_RD_DATA_RANGE);
        ram0_rd_addr  : out std_logic_vector(RAM0_ADDR_RANGE);
        ram0_rd_size  : out std_logic_vector(RAM0_RD_SIZE_RANGE);
        ram0_rd_done  : in  std_logic;

        debug_ram0_rd_count      : in std_logic_vector(RAM0_RD_SIZE_RANGE);
        debug_ram0_rd_start_addr : in std_logic_vector(RAM0_ADDR_RANGE);
        debug_ram0_rd_addr       : in std_logic_vector(RAM0_ADDR_RANGE);
        debug_ram0_rd_size       : in std_logic_vector(C_RAM0_ADDR_WIDTH downto 0);
        debug_ram0_rd_prog_full  : in std_logic;
        debug_ram0_rd_empty      : in std_logic;

        -- DMA write interface for RAM 1 
        ram1_wr_ready : in  std_logic;
        ram1_wr_go    : out std_logic;
        ram1_wr_valid : out std_logic;
        ram1_wr_data  : out std_logic_vector(RAM1_WR_DATA_RANGE);
        ram1_wr_addr  : out std_logic_vector(RAM1_ADDR_RANGE);
        ram1_wr_size  : out std_logic_vector(RAM1_WR_SIZE_RANGE);
        ram1_wr_done  : in  std_logic
        );
end user_app;

architecture default of user_app is

    signal go   : std_logic;
    signal done : std_logic;

    --mmap wirs
    signal signal_size : std_logic_vector(RAM0_RD_SIZE_RANGE);
    signal clear        :  std_logic;
    signal sw_rst     :  std_logic;
    signal kernel_data: std_logic_vector(KERNEL_WIDTH_RANGE);
    signal kernel_load: std_logic;
    signal kernel_ready: std_logic;
    
    --signal_buffer_wires
    signal signal_buffer_full : std_logic;
    signal signal_buffer_output : std_logic_vector(C_KERNEL_WIDTH *C_KERNEL_SIZE -1 downto 0);
    signal signal_buffer_rd_en : std_logic;
    signal signal_buffer_wr_en : std_logic;
    signal signal_buffer_output_valid : std_logic;
    signal signal_output_en: std_logic;
   
    --kernel_buffer_wires
    signal kernel_buffer_full : std_logic;
    signal kernel_buffer_output : std_logic_vector(C_KERNEL_WIDTH *C_KERNEL_SIZE -1 downto 0);
    signal kernel_buffer_rd_en: std_logic;
    signal kernel_buffer_output_valid : std_logic;
    signal kernel_output_en: std_logic;
    
    --conv wires
    signal conv_go: std_logic;
    signal conv_input_valid: std_logic;
    signal conv_output: std_logic_vector(C_KERNEL_WIDTH+C_KERNEL_WIDTH+clog2(C_KERNEL_SIZE)-1 downto 0);
    signal delay_input: std_logic_vector(0 downto 0);
    signal delay_output: std_logic_vector(0 downto 0);
begin

    U_MMAP : entity work.memory_map
    port map(
        clk     => clk,
        rst     => rst,
        wr_en  =>   mmap_wr_en,
        wr_addr =>  mmap_wr_addr,
        wr_data =>  mmap_wr_data,
        rd_en   =>mmap_rd_en,
        rd_addr =>  mmap_rd_addr,
        rd_data => mmap_rd_data,

        -- Circuit interface from software        
        go => go,
        clear => clear,
        sw_rst  => sw_rst,
        signal_size => signal_size,
        kernel_data  => kernel_data,
        kernel_load  => kernel_load,
        kernel_ready => kernel_ready,
        done  => done
        );
    ram0_rd_addr <= (others=> '0');
    ram1_wr_addr <= (others=> '0');
        
        
    U_KERNEL_BUFFER: entity work.new_buffer
    generic map
    (
    inverse_output => '1',
    input_width => C_KERNEL_WIDTH,
    num_inputs   => C_KERNEL_SIZE
    )
    port map
    (
    clk => clk,
    rst=> clear or rst,
    go=> go,
    din =>kernel_data,
    dout => open,
    wr_en  =>kernel_load,
    rd_en => '0',
    output_en => kernel_output_en,
    full => kernel_buffer_full,
    empty=> kernel_ready,
    output=>kernel_buffer_output,
    output_valid => kernel_buffer_output_valid
    );
    
        
    U_SGINAL_BUFFER: entity work.new_buffer
    generic map
    (
    inverse_output => '0',
    input_width => C_KERNEL_WIDTH,
    num_inputs   => C_KERNEL_SIZE
    )
    port map
    (
    clk => clk,
    rst=> clear or rst,
    go=> go,
    din =>ram0_rd_data,
    dout => open,
    wr_en  => signal_buffer_wr_en,
    rd_en => signal_buffer_rd_en,
    output_en => signal_output_en,
    full => signal_buffer_full,
    empty=> open,
    output=>signal_buffer_output,
    output_valid => signal_buffer_output_valid
    );
    
    
    
    
    
    -- RAM0 control remove.
    ram0_rd_go    <= go;
    signal_buffer_wr_en <= (ram0_rd_valid and ram1_wr_ready and (not signal_buffer_full)) or (ram0_rd_valid and conv_go and ram1_wr_ready);
    ram0_rd_rd_en <= signal_buffer_wr_en;
    ram0_rd_size <= std_logic_vector(to_unsigned(to_integer(unsigned(signal_size)) + 2 * (C_KERNEL_SIZE - 1), ram0_rd_size'length));


    
    --conv contral
    conv_go <= signal_buffer_full and kernel_buffer_full;
    
    signal_buffer_rd_en <= conv_go;
    signal_output_en <= conv_go;
    kernel_output_en <= conv_go;
    --kernel_buffer_rd_en <= conv_go;
    conv_input_valid <= kernel_buffer_output_valid and signal_buffer_output_valid;
    
    U_PIPLINE: entity work.mult_add_tree(unsigned_arch )
      generic map(
        num_inputs  => C_KERNEL_SIZE,
        input1_width => C_KERNEL_WIDTH,
        input2_width => C_KERNEL_WIDTH)
      port map(
        clk   => clk,
        rst  => rst,
        en    => ram1_wr_ready,
        input1 => kernel_buffer_output,
        input2 => signal_buffer_output,
        output  => conv_output);
    
    
    -- RAM1 control remove.
    ram1_wr_go    <= go;
    ram1_wr_size<= std_logic_vector(to_unsigned(to_integer(unsigned(signal_size))+ C_KERNEL_SIZE - 1 , ram1_wr_size'length));
    --clipping output
    process(conv_output)
    begin
        if (to_integer(unsigned(conv_output)) >= 65535) then
            ram1_wr_data <= std_logic_vector (to_unsigned(65535, ram1_wr_data'length));
        else
            ram1_wr_data  <= conv_output(ram1_wr_data'range);
        end if;
    end process;
    --ram1_wr_valid <= ram0_rd_valid and ram1_wr_ready;
    
    U_DELAY: entity work.delay
    generic map(CYCLES => (1 + clog2(C_KERNEL_SIZE)),
            WIDTH  => 1,
            RESET_VALUE => "0")
    port map(clk => clk,
         rst => rst,
         en => ram1_wr_ready,
         input  => delay_input,
         output => delay_output);
    
       
    delay_input  <= (0 => conv_input_valid);
    ram1_wr_valid <= delay_output(0);

    done <= ram1_wr_done;

end default;
