-- Greg Stitt
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;

use work.config_pkg.all;
use work.user_pkg.all;

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
    signal size : std_logic_vector(RAM0_RD_SIZE_RANGE);
    signal done : std_logic;

begin

    U_MMAP : entity work.memory_map
        port map (
            clk => clk,
            rst => rst,

            wr_en   => mmap_wr_en,
            wr_addr => mmap_wr_addr,
            wr_data => mmap_wr_data,
            rd_en   => mmap_rd_en,
            rd_addr => mmap_rd_addr,
            rd_data => mmap_rd_data,

            -- circuit interface from software
            go           => go,
            size         => size,
            ram0_rd_addr => ram0_rd_addr,
            ram1_wr_addr => ram1_wr_addr,
            done         => done,

            -- Debugging signals.
            debug_ram0_rd_count      => debug_ram0_rd_count,
            debug_ram0_rd_addr       => debug_ram0_rd_addr,
            debug_ram0_rd_start_addr => debug_ram0_rd_start_addr,
            debug_ram0_rd_size       => debug_ram0_rd_size,
            debug_ram0_rd_prog_full  => debug_ram0_rd_prog_full,
            debug_ram0_rd_empty      => debug_ram0_rd_empty
            );

    -- RAM0 control.
    ram0_rd_go    <= go;
    ram0_rd_rd_en <= ram0_rd_valid and ram1_wr_ready;
    ram0_rd_size  <= size;

    -- RAM1 control.
    ram1_wr_go    <= go;
    ram1_wr_size  <= size;
    ram1_wr_data  <= ram0_rd_data;
    ram1_wr_valid <= ram0_rd_valid and ram1_wr_ready;

    done <= ram1_wr_done;

end default;
