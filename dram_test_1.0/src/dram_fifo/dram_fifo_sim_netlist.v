// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Dec  8 11:44:19 2023
// Host        : ASUS-Q530VJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/16473/Xilinx_projects/ip_repo_final_project/dram_test_1.0/src/dram_fifo/dram_fifo_sim_netlist.v
// Design      : dram_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dram_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module dram_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "32" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "31" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  dram_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dram_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dram_fifo_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dram_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dram_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module dram_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module dram_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 101104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
