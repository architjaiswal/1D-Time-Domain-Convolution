// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Dec  8 11:30:46 2023
// Host        : ASUS-Q530VJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/16473/Xilinx_projects/ip_repo_final_project/dram_test_1.0/src/users/gstitt/project_24/project_24.tmp/dram_test_v1_0_project/dram_test_v1_0_project.gen/sources_1/ip/dma_fifo/dma_fifo_sim_netlist.v
// Design      : dma_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dma_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module dma_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
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
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [31:0]din;
  wire [31:0]dout;
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
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
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
  (* C_DOUT_WIDTH = "32" *) 
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
  (* C_HAS_ALMOST_FULL = "1" *) 
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
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "50" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "49" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
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
  dma_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
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
module dma_fifo_xpm_cdc_gray
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
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dma_fifo_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dma_fifo_xpm_cdc_single
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
module dma_fifo_xpm_cdc_single__2
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
module dma_fifo_xpm_cdc_sync_rst
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
module dma_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 115072)
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
