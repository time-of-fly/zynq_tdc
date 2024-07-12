// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jul 13 07:00:27 2024
// Host        : DESKTOP-Q5FQ0UQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Users/wen02/Documents/GitHub/zynq_tdc/TDCsystem/TDCsystem.srcs/sources_1/bd/TDCsystem/ip/TDCsystem_AXITDC_1_0/TDCsystem_AXITDC_1_0_stub.v
// Design      : TDCsystem_AXITDC_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXITDC,Vivado 2018.2" *)
module TDCsystem_AXITDC_1_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, s_axi_1_awid, s_axi_1_awaddr, 
  s_axi_1_awlen, s_axi_1_awsize, s_axi_1_awburst, s_axi_1_awlock, s_axi_1_awcache, 
  s_axi_1_awprot, s_axi_1_awvalid, s_axi_1_awready, s_axi_1_wdata, s_axi_1_wstrb, 
  s_axi_1_wlast, s_axi_1_wvalid, s_axi_1_wready, s_axi_1_bid, s_axi_1_bresp, s_axi_1_bvalid, 
  s_axi_1_bready, s_axi_1_arid, s_axi_1_araddr, s_axi_1_arlen, s_axi_1_arsize, 
  s_axi_1_arburst, s_axi_1_arlock, s_axi_1_arcache, s_axi_1_arprot, s_axi_1_arvalid, 
  s_axi_1_arready, s_axi_1_rid, s_axi_1_rdata, s_axi_1_rresp, s_axi_1_rlast, s_axi_1_rvalid, 
  s_axi_1_rready, clk, hit, trigger_in, trigger_out)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[8:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_1_awid[11:0],s_axi_1_awaddr[13:0],s_axi_1_awlen[7:0],s_axi_1_awsize[2:0],s_axi_1_awburst[1:0],s_axi_1_awlock,s_axi_1_awcache[3:0],s_axi_1_awprot[2:0],s_axi_1_awvalid,s_axi_1_awready,s_axi_1_wdata[31:0],s_axi_1_wstrb[3:0],s_axi_1_wlast,s_axi_1_wvalid,s_axi_1_wready,s_axi_1_bid[11:0],s_axi_1_bresp[1:0],s_axi_1_bvalid,s_axi_1_bready,s_axi_1_arid[11:0],s_axi_1_araddr[13:0],s_axi_1_arlen[7:0],s_axi_1_arsize[2:0],s_axi_1_arburst[1:0],s_axi_1_arlock,s_axi_1_arcache[3:0],s_axi_1_arprot[2:0],s_axi_1_arvalid,s_axi_1_arready,s_axi_1_rid[11:0],s_axi_1_rdata[31:0],s_axi_1_rresp[1:0],s_axi_1_rlast,s_axi_1_rvalid,s_axi_1_rready,clk,hit,trigger_in[10:0],trigger_out[10:0]" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [11:0]s_axi_1_awid;
  input [13:0]s_axi_1_awaddr;
  input [7:0]s_axi_1_awlen;
  input [2:0]s_axi_1_awsize;
  input [1:0]s_axi_1_awburst;
  input s_axi_1_awlock;
  input [3:0]s_axi_1_awcache;
  input [2:0]s_axi_1_awprot;
  input s_axi_1_awvalid;
  output s_axi_1_awready;
  input [31:0]s_axi_1_wdata;
  input [3:0]s_axi_1_wstrb;
  input s_axi_1_wlast;
  input s_axi_1_wvalid;
  output s_axi_1_wready;
  output [11:0]s_axi_1_bid;
  output [1:0]s_axi_1_bresp;
  output s_axi_1_bvalid;
  input s_axi_1_bready;
  input [11:0]s_axi_1_arid;
  input [13:0]s_axi_1_araddr;
  input [7:0]s_axi_1_arlen;
  input [2:0]s_axi_1_arsize;
  input [1:0]s_axi_1_arburst;
  input s_axi_1_arlock;
  input [3:0]s_axi_1_arcache;
  input [2:0]s_axi_1_arprot;
  input s_axi_1_arvalid;
  output s_axi_1_arready;
  output [11:0]s_axi_1_rid;
  output [31:0]s_axi_1_rdata;
  output [1:0]s_axi_1_rresp;
  output s_axi_1_rlast;
  output s_axi_1_rvalid;
  input s_axi_1_rready;
  input clk;
  input hit;
  input [10:0]trigger_in;
  output [10:0]trigger_out;
endmodule
