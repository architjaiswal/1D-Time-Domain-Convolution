library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity addr_gen is
  generic(width :     positive);
  port (
    clk         : in  std_logic;
    rst         : in  std_logic;
    size        : in  std_logic_vector(width downto 0);
    go          : in  std_logic;
    stall       : in  std_logic;
    start_addr  : in std_logic_vector(width-1 downto 0);
    addr        : out std_logic_vector(width-1 downto 0);
    valid       : out std_logic;
    done        : out std_logic);
end addr_gen;

architecture BHV of addr_gen is

  type state_type is (S_INIT, S_EXECUTE);
  signal state, next_state : state_type;

  signal size_reg, next_size_reg : unsigned(width downto 0);
  signal addr_s, next_addr_s     : std_logic_vector(width downto 0);

begin  -- BHV

  process (clk, rst)
  begin
    if (rst = '1') then
      addr_s   <= (others => '0');
      size_reg <= (others => '0');
      state    <= S_INIT;
    elsif (clk'event and clk = '1') then
      addr_s   <= next_addr_s;
      size_reg <= next_size_reg;
      state    <= next_state;
    end if;
  end process;

  process(addr_s, size_reg, size, state, go, stall)
  begin

    next_state    <= state;
    next_addr_s   <= addr_s;
    next_size_reg <= size_reg;
    done          <= '1';

    case state is
      when S_INIT =>

        next_addr_s <= std_logic_vector(to_unsigned(to_integer(unsigned(start_addr)), width+1));
        valid       <= '0';

        if (go = '1') then
          done          <= '0';
          next_size_reg <= unsigned(size);
          next_state    <= S_EXECUTE;
        end if;

      when S_EXECUTE =>

        valid <= '1';
        done  <= '0';

        if (unsigned(addr_s) = size_reg + unsigned(start_addr)) then
		valid <= '0';
          done        <= '1';
          next_state  <= S_INIT;
        elsif (stall = '0') then
          next_addr_s <= std_logic_vector(unsigned(addr_s)+1);
        elsif (stall = '1') then
          valid       <= '0';
        end if;

      when others => null;
    end case;

  end process;

  addr <= addr_s(width-1 downto 0);

end BHV;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter is
	port(
		clk: in std_logic;
		rst: in std_logic;
		tick: in std_logic;
		go : in std_logic;
		size : in std_logic_vector (16 downto 0);
		counter_done : out std_logic
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
            counter <= std_logic_vector(to_unsigned(0,17));
            counter_done <= '0';
            counter_state    <= S_INIT;
       elsif (clk'event and clk = '1') then
           case counter_state is
               when S_INIT =>
					counter <= std_logic_vector(to_unsigned(0,17));
					counter_done <= '0';
					if( go = '1') then
						size_r <= size;
						counter_state <= S_EXECUTE;
					end if;
               when S_EXECUTE =>
                   if( unsigned(size_r) = unsigned(counter)) then
                       counter <= (others=>'0');
                       counter_done <= '1';
                       counter_state <= S_INIT;
                   elsif (tick = '1') then
                        if( unsigned(size_r) - to_unsigned(1, counter'length)= unsigned(counter)) then
							counter_done <= '1';
						else
							counter_done <= '0';
						end if;
                       counter <= std_logic_vector(unsigned(counter) + to_unsigned(1,17));         
                   end if;
              when others => null;
             end case;
       end if;
      end process;
end BHV;


			
library ieee;
use ieee.std_logic_1164.all;

entity handshake is
    port (
        clk_src   : in  std_logic;
        clk_dest  : in  std_logic;
        rst       : in  std_logic;
        go        : in  std_logic;
        delay_ack : in  std_logic;
        rcv       : out std_logic;
        ack       : out std_logic
        );
end handshake;

architecture TRANSITIONAL of handshake is

    type state_type is (S_READY, S_WAIT_FOR_ACK, S_RESET_ACK);
    type state_type2 is (S_READY, S_SEND_ACK, S_RESET_ACK);
    signal state_src  : state_type;
    signal state_dest : state_type2;
    
    
    signal ack_dest_dual_flop_r1: std_logic;
    signal ack_dest_dual_flop_r2: std_logic;
    
    signal send_src_dual_flop_r1: std_logic;
    signal send_src_dual_flop_r2: std_logic;
    
    signal send_src_r : std_logic;
    signal ack_dest_r : std_logic;
begin

    -----------------------------------------------------------------------------
    -- State machine in source domain that sends to dest domain and then waits
    -- for an ack

    process(clk_src, rst)
    begin
        if (rst = '1') then
            state_src  <= S_READY;
            send_src_r <= '0';
            ack        <= '0';
        elsif (rising_edge(clk_src)) then

            ack <= '0';

            case state_src is
                when S_READY =>
                    if (go = '1') then
                        send_src_r <= '1';
                        state_src  <= S_WAIT_FOR_ACK;
                    end if;

                when S_WAIT_FOR_ACK =>
                    if (ack_dest_dual_flop_r2 = '1') then
                        send_src_r <= '0';
                        state_src  <= S_RESET_ACK;
                    end if;

                when S_RESET_ACK =>
                    if (ack_dest_dual_flop_r2 = '0') then
                        ack       <= '1';
                        state_src <= S_READY;
                    end if;

                when others => null;
            end case;
            ack_dest_dual_flop_r1 <= ack_dest_r;
            ack_dest_dual_flop_r2 <= ack_dest_dual_flop_r1;
        end if;
    end process;

    -----------------------------------------------------------------------------
    -- State machine in dest domain that waits for source domain to send signal,
    -- which then gets acknowledged

    process(clk_dest, rst)
    begin
        if (rst = '1') then
            state_dest <= S_READY;
            ack_dest_r <= '0';
            rcv        <= '0';
        elsif (rising_edge(clk_dest)) then

            rcv <= '0';

            case state_dest is
                when S_READY =>
                    -- if source is sending data, assert rcv (received)
                    if (send_src_dual_flop_r2 = '1') then
                        rcv        <= '1';
                        state_dest <= S_SEND_ACK;
                    end if;

                when S_SEND_ACK =>
                    -- send ack unless it is delayed
                    if (delay_ack = '0') then
                        ack_dest_r <= '1';
                        state_dest <= S_RESET_ACK;
                    end if;

                when S_RESET_ACK =>
                    -- send ack unless it is delayed
                    if (send_src_dual_flop_r2 = '0') then
                        ack_dest_r <= '0';
                        state_dest <= S_READY;
                    end if;

                when others => null;
            end case;
            send_src_dual_flop_r1 <= send_src_r;
            send_src_dual_flop_r2 <= send_src_dual_flop_r1;
        end if;
    end process;

end TRANSITIONAL;
			

			
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity new_dram_rd is
port (
		-- user dma control signals
        dram_clk             : in  std_logic;
        user_clk             : in  std_logic;
        dram_rst             : in  std_logic;
        user_rst             : in  std_logic;
        go                   : in  std_logic;
        rd_en                : in  std_logic;
        stall                : in  std_logic;
        start_addr           : in  std_logic_vector (14 downto 0);
        size                 : in  std_logic_vector (16 downto 0);
        valid                : out std_logic;
        data                 : out std_logic_vector (15 downto 0);
        done                 : out std_logic;
		
		-- debugging signals
        debug_count          : out std_logic_vector (16 downto 0);
        debug_dma_size       : out std_logic_vector (15 downto 0);
        debug_dma_start_addr : out std_logic_vector (14 downto 0);
        debug_dma_addr       : out std_logic_vector (14 downto 0);
        debug_dma_prog_full  : out std_logic;
        debug_dma_empty      : out std_logic;
		
		-- dram control signals
        dram_ready           : in  std_logic;
        dram_rd_en           : out std_logic;
        dram_rd_addr         : out std_logic_vector (14 downto 0);
        dram_rd_data         : in  std_logic_vector (31 downto 0);
        dram_rd_valid        : in  std_logic
    );
end new_dram_rd;

architecture STR of new_dram_rd is
	--wires for in_addr_gen
	signal input_ack: std_logic;
	signal in_addr_gen_go: std_logic;
	signal size_convented:  std_logic_vector(15 downto 0);
	--signal dram_received: std_logic;
	--signal addr_gen_in_en: std_logic;
	signal addr_gen_in_stall: std_logic;
	signal addr_gen_in_done: std_logic;
	
	--dram_fifo wires
	signal fifo_din:  std_logic_vector (31 downto 0);
	signal fifo_prog_full: std_logic;
	signal fifo_empty: std_logic;
	signal fifo_rd_en: std_logic;
	signal fifo_wr_rst_busy: std_logic;
	signal fifo_rd_rst_busy: std_logic;
	
	--counter for done
	signal counter_done: std_logic;
	signal counter_done_r1: std_logic;
	signal counter_done_r2: std_logic;
	
COMPONENT dram_fifo
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC;
    wr_rst_busy : OUT STD_LOGIC;
    rd_rst_busy : OUT STD_LOGIC 
  );
END COMPONENT;
begin

		
	U_ADDR_GEN_SYNC : entity work.handshake
        port map (
            clk_src   => user_clk,
            clk_dest  => dram_clk,
            rst       => user_rst,
            go        => go,
            delay_ack => '0',
            rcv       => in_addr_gen_go,
            ack       => input_ack);
			
	--size convension
	size_convented <= std_logic_vector(to_signed(to_integer(unsigned(size)/2 + to_integer(unsigned(size)) mod 2), 16));

    U_MEM_IN_ADDR_GEN : entity work.addr_gen
        generic map (
            width => 15)
        port map (
            clk   => dram_clk,
            rst   => dram_rst,
            size  => size_convented,
            go    => in_addr_gen_go,
            stall => addr_gen_in_stall,
            start_addr =>start_addr,
            addr  => dram_rd_addr,
            valid => dram_rd_en,
            done  => addr_gen_in_done);
    
    addr_gen_in_stall <= (not dram_ready) or fifo_prog_full;
			
	--done <= input_ack;
	
	U_DRAM_FIFO : dram_fifo
    PORT MAP (
        rst => counter_done_r2,
        wr_clk => dram_clk,
        rd_clk => user_clk,
        din => fifo_din,
        wr_en => dram_rd_valid,
        rd_en => fifo_rd_en,
        dout => data,
        full => open,
        empty => fifo_empty,
        prog_full => fifo_prog_full,
        wr_rst_busy => fifo_wr_rst_busy,
        rd_rst_busy => fifo_rd_rst_busy
    );
      
    fifo_rd_en <= (not fifo_empty) and rd_en;
    fifo_din <= dram_rd_data(15 downto 0) & dram_rd_data(31 downto 16);--dram_rd_data;
	  
	--process(user_clk,user_rst)
	--begin
	--	if(user_rst = '1' ) then
	--		valid <= '0';
	--	elsif(rising_edge(user_clk)) then
	--		valid <= fifo_rd_en	and (not fifo_empty);
	--	end if;
	--end process;
	valid <= not fifo_empty;
	
      
    --counter for done
	U_DONE_COUNTER: entity work.counter
	port map(
		clk => user_clk,
		rst => user_rst,
		tick => fifo_rd_en,
		go => go,
		size => size,
		counter_done => counter_done
		);
      
      --sychronizer for fifo_rst
      process(dram_clk,dram_rst)
      begin
        if(dram_rst = '1') then
            counter_done_r1 <= '0';
            counter_done_r2 <= '0';
        elsif(dram_clk'event and dram_clk = '1') then
            counter_done_r1 <= counter_done;
            counter_done_r2 <= counter_done_r1;
        end if;
      end process;
      
      
      
      done <= counter_done;
end STR;