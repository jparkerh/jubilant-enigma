//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Wed Nov  7 08:52:37 2018
//Host        : xsjapps53 running 64-bit Ubuntu 16.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (M00_AXI_0_araddr,
    M00_AXI_0_arprot,
    M00_AXI_0_arready,
    M00_AXI_0_arvalid,
    M00_AXI_0_awaddr,
    M00_AXI_0_awprot,
    M00_AXI_0_awready,
    M00_AXI_0_awvalid,
    M00_AXI_0_bready,
    M00_AXI_0_bresp,
    M00_AXI_0_bvalid,
    M00_AXI_0_rdata,
    M00_AXI_0_rready,
    M00_AXI_0_rresp,
    M00_AXI_0_rvalid,
    M00_AXI_0_wdata,
    M00_AXI_0_wready,
    M00_AXI_0_wstrb,
    M00_AXI_0_wvalid,
    axi_clk,
    axi_rst,
    fb_interface);
  output [39:0]M00_AXI_0_araddr;
  output [2:0]M00_AXI_0_arprot;
  input [0:0]M00_AXI_0_arready;
  output [0:0]M00_AXI_0_arvalid;
  output [39:0]M00_AXI_0_awaddr;
  output [2:0]M00_AXI_0_awprot;
  input [0:0]M00_AXI_0_awready;
  output [0:0]M00_AXI_0_awvalid;
  output [0:0]M00_AXI_0_bready;
  input [1:0]M00_AXI_0_bresp;
  input [0:0]M00_AXI_0_bvalid;
  input [31:0]M00_AXI_0_rdata;
  output [0:0]M00_AXI_0_rready;
  input [1:0]M00_AXI_0_rresp;
  input [0:0]M00_AXI_0_rvalid;
  output [31:0]M00_AXI_0_wdata;
  input [0:0]M00_AXI_0_wready;
  output [3:0]M00_AXI_0_wstrb;
  output [0:0]M00_AXI_0_wvalid;
  output axi_clk;
  output [0:0]axi_rst;
  input [31:0]fb_interface;

  wire [39:0]M00_AXI_0_araddr;
  wire [2:0]M00_AXI_0_arprot;
  wire [0:0]M00_AXI_0_arready;
  wire [0:0]M00_AXI_0_arvalid;
  wire [39:0]M00_AXI_0_awaddr;
  wire [2:0]M00_AXI_0_awprot;
  wire [0:0]M00_AXI_0_awready;
  wire [0:0]M00_AXI_0_awvalid;
  wire [0:0]M00_AXI_0_bready;
  wire [1:0]M00_AXI_0_bresp;
  wire [0:0]M00_AXI_0_bvalid;
  wire [31:0]M00_AXI_0_rdata;
  wire [0:0]M00_AXI_0_rready;
  wire [1:0]M00_AXI_0_rresp;
  wire [0:0]M00_AXI_0_rvalid;
  wire [31:0]M00_AXI_0_wdata;
  wire [0:0]M00_AXI_0_wready;
  wire [3:0]M00_AXI_0_wstrb;
  wire [0:0]M00_AXI_0_wvalid;
  wire axi_clk;
  wire [0:0]axi_rst;
  wire [31:0]fb_interface;

  design_1 design_1_i
       (.M00_AXI_0_araddr(M00_AXI_0_araddr),
        .M00_AXI_0_arprot(M00_AXI_0_arprot),
        .M00_AXI_0_arready(M00_AXI_0_arready),
        .M00_AXI_0_arvalid(M00_AXI_0_arvalid),
        .M00_AXI_0_awaddr(M00_AXI_0_awaddr),
        .M00_AXI_0_awprot(M00_AXI_0_awprot),
        .M00_AXI_0_awready(M00_AXI_0_awready),
        .M00_AXI_0_awvalid(M00_AXI_0_awvalid),
        .M00_AXI_0_bready(M00_AXI_0_bready),
        .M00_AXI_0_bresp(M00_AXI_0_bresp),
        .M00_AXI_0_bvalid(M00_AXI_0_bvalid),
        .M00_AXI_0_rdata(M00_AXI_0_rdata),
        .M00_AXI_0_rready(M00_AXI_0_rready),
        .M00_AXI_0_rresp(M00_AXI_0_rresp),
        .M00_AXI_0_rvalid(M00_AXI_0_rvalid),
        .M00_AXI_0_wdata(M00_AXI_0_wdata),
        .M00_AXI_0_wready(M00_AXI_0_wready),
        .M00_AXI_0_wstrb(M00_AXI_0_wstrb),
        .M00_AXI_0_wvalid(M00_AXI_0_wvalid),
        .axi_clk(axi_clk),
        .axi_rst(axi_rst),
        .fb_interface(fb_interface));
endmodule
