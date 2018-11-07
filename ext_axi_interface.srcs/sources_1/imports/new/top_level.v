`timescale 1ns / 1ps

module top_level(

    );
    
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
  wire [31:0]feedback_pins;
  wire reset;

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
        .fb_interface(feedback_pins));
        
    axi_gpio_0 stimulate_gpio (
      .s_axi_aclk(axi_clk),        // input wire s_axi_aclk
      .s_axi_aresetn(axi_rst),  // input wire s_axi_aresetn
      .s_axi_awaddr(M00_AXI_0_awaddr),    // input wire [8 : 0] s_axi_awaddr
      .s_axi_awvalid(M00_AXI_0_awvalid),  // input wire s_axi_awvalid
      .s_axi_awready(M00_AXI_0_awready),  // output wire s_axi_awready
      .s_axi_wdata(M00_AXI_0_wdata),      // input wire [31 : 0] s_axi_wdata
      .s_axi_wstrb(M00_AXI_0_wstrb),      // input wire [3 : 0] s_axi_wstrb
      .s_axi_wvalid(M00_AXI_0_wvalid),    // input wire s_axi_wvalid
      .s_axi_wready(M00_AXI_0_wready),    // output wire s_axi_wready
      .s_axi_bresp(M00_AXI_0_bresp),      // output wire [1 : 0] s_axi_bresp
      .s_axi_bvalid(M00_AXI_0_bvalid),    // output wire s_axi_bvalid
      .s_axi_bready(M00_AXI_0_bready),    // input wire s_axi_bready
      .s_axi_araddr(M00_AXI_0_araddr),    // input wire [8 : 0] s_axi_araddr
      .s_axi_arvalid(M00_AXI_0_arvalid),  // input wire s_axi_arvalid
      .s_axi_arready(M00_AXI_0_arready),  // output wire s_axi_arready
      .s_axi_rdata(M00_AXI_0_rdata),      // output wire [31 : 0] s_axi_rdata
      .s_axi_rresp(M00_AXI_0_rresp),      // output wire [1 : 0] s_axi_rresp
      .s_axi_rvalid(M00_AXI_0_rvalid),    // output wire s_axi_rvalid
      .s_axi_rready(M00_AXI_0_rready),    // input wire s_axi_rready
      .gpio_io_o(feedback_pins)          // output wire [31 : 0] gpio_io_o
    );      

endmodule
