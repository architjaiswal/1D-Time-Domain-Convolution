-- Greg Stitt
-- University of Florida

-- Entity: memory_map

-- Note: Make sure to add any new addresses to user_pkg. Also, in your C code,
-- make sure to use the same constants.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;

entity memory_map is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        wr_en   : in  std_logic;
        wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        rd_en   : in  std_logic;
        rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- Circuit interface from software
        go           : out std_logic;
        size         : out std_logic_vector(RAM0_RD_SIZE_RANGE);
        ram0_rd_addr : out std_logic_vector(RAM0_ADDR_RANGE);
        ram1_wr_addr : out std_logic_vector(RAM1_ADDR_RANGE);
        done         : in  std_logic;

        -- DMA debugging signals
        debug_ram0_rd_count      : in std_logic_vector(RAM0_RD_SIZE_RANGE);
        debug_ram0_rd_start_addr : in std_logic_vector(RAM0_ADDR_RANGE);
        debug_ram0_rd_addr       : in std_logic_vector(RAM0_ADDR_RANGE);
        debug_ram0_rd_size       : in std_logic_vector(C_RAM0_ADDR_WIDTH downto 0);
        debug_ram0_rd_prog_full  : in std_logic;
        debug_ram0_rd_empty      : in std_logic
        );
end memory_map;

architecture BHV of memory_map is

    signal go_r           : std_logic;
    signal size_r         : std_logic_vector(RAM0_RD_SIZE_RANGE);
    signal ram0_rd_addr_r : std_logic_vector(RAM0_ADDR_RANGE);
    signal ram1_wr_addr_r : std_logic_vector(RAM1_ADDR_RANGE);

begin

    process(clk, rst)
    begin
        if (rst = '1') then
            go_r           <= '0';
            size_r         <= (others => '0');
            ram0_rd_addr_r <= (others => '0');
            ram1_wr_addr_r <= (others => '0');

            rd_data <= (others => '0');

        elsif (rising_edge(clk)) then

            go_r <= '0';

            if (wr_en = '1') then
                case wr_addr is
                    when C_GO_ADDR =>
                        go_r <= wr_data(0);

                    when C_SIZE_ADDR =>
                        size_r <= wr_data(RAM0_RD_SIZE_RANGE);

                    when C_RAM0_RD_ADDR_ADDR =>
                        ram0_rd_addr_r <= wr_data(RAM0_ADDR_RANGE);

                    when C_RAM1_WR_ADDR_ADDR =>
                        ram1_wr_addr_r <= wr_data(RAM1_ADDR_RANGE);

                    when others => null;
                end case;
            end if;

            if (rd_en = '1') then

                rd_data <= (others => '0');

                case rd_addr is
                    when C_GO_ADDR =>
                        rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-1)) & go_r;
                    when C_SIZE_ADDR =>
                        rd_data(size_r'range) <= size_r;

                    when C_RAM0_RD_ADDR_ADDR =>
                        rd_data(ram0_rd_addr_r'range) <= ram0_rd_addr_r;

                    when C_RAM1_WR_ADDR_ADDR =>
                        rd_data(ram1_wr_addr_r'range) <= ram1_wr_addr_r;

                    when C_DONE_ADDR =>
                        rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-1)) & done;

                    when C_DMA_RD_COUNT_ADDR =>
                        rd_data(debug_ram0_rd_count'range) <= debug_ram0_rd_count;

                    when C_DMA_RD_START_ADDR_ADDR =>
                        rd_data(debug_ram0_rd_start_addr'range) <= debug_ram0_rd_start_addr;

                    when C_DMA_RD_ADDR_ADDR =>
                        rd_data(debug_ram0_rd_addr'range) <= debug_ram0_rd_addr;

                    when C_DMA_RD_SIZE_ADDR =>
                        rd_data(debug_ram0_rd_size'range) <= debug_ram0_rd_size;

                    when C_DMA_RD_PROG_FULL_ADDR =>
                        rd_data(0) <= debug_ram0_rd_prog_full;

                    when C_DMA_RD_EMPTY_ADDR =>
                        rd_data(0) <= debug_ram0_rd_empty;

                    when others =>
                        rd_data <= std_logic_vector(to_unsigned(10, C_MMAP_DATA_WIDTH));
                end case;
            end if;

        end if;
    end process;

    go           <= go_r;
    size         <= size_r;
    ram0_rd_addr <= ram0_rd_addr_r;
    ram1_wr_addr <= ram1_wr_addr_r;

end BHV;
