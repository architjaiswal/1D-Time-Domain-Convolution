library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;
use ieee.math_real.all;
use work.math_custom.all;

entity padding_unit is
    generic 
    (
    inverse_output : std_logic;
    input_width : positive;
    num_inputs   : positive
    );
	port	(
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
    output_valid: out std_logic;
	signal_size: in std_logic_vector(RAM0_RD_SIZE_RANGE)
    );
end padding_unit;

architecture STR of padding_unit is
	signal padding_din : std_logic_vector(input_width-1 downto 0);
	signal end_padding_flag: std_logic;
	signal through_number: std_logic_vector (16 downto 0);
	signal padding_full: std_logic;
begin
	
	
	U_BUFFER: entity work.new_buffer
		generic map(
			    inverse_output => inverse_output,
				input_width => input_width,
				num_inputs   => C_KERNEL_SIZE - 1
		)
		port map(
		    clk => clk,
    rst => rst,	
    go => go,
    din  => padding_din,
    dout => dout,
    wr_en  =>wr_en,
    rd_en => rd_en,
    output_en=> output_en,
    full => padding_full,
    empty => empty,
    output=> output,
    output_valid => output_valid
		);
		
    full <= padding_full;
		
	U_PADDING_COUNTER: entity work.counter
	port map(
		clk => clk,
		rst => rst,
		tick => wr_en,
		back_tick => '0',
		go => '1',
		size => (others => '1'),
		full => open,
		empty => open,
		count => through_number
		);
	
	process(padding_full, through_number)
	begin
		if(padding_full = '1' and to_integer(unsigned(through_number)) <= to_integer(unsigned(signal_size)) + C_KERNEL_SIZE - 1) then
			padding_din <= din;
		else
			padding_din <= (others=> '0');
		end if;
	end process;
	
end STR;