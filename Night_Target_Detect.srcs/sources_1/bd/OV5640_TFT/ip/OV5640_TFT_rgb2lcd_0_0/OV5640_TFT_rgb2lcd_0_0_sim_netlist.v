// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 30 18:59:41 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top OV5640_TFT_rgb2lcd_0_0 -prefix
//               OV5640_TFT_rgb2lcd_0_0_ OV5640_TFT_rgb2lcd_0_0_sim_netlist.v
// Design      : OV5640_TFT_rgb2lcd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OV5640_TFT_rgb2lcd_0_0,rgb2lcd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rgb2lcd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module OV5640_TFT_rgb2lcd_0_0
   (rgb_data_in,
    rgb_vde,
    rgb_hsync,
    rgb_vsync,
    pixel_clk,
    vid_rst,
    lcd_pclk,
    lcd_rst,
    lcd_hs,
    lcd_vs,
    lcd_de,
    lcd_bl,
    data);
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb DATA" *) input [23:0]rgb_data_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb ACTIVE_VIDEO" *) input rgb_vde;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb HSYNC" *) input rgb_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb VSYNC" *) input rgb_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN OV5640_TFT_axi_dynclk_0_0_PXL_CLK_O, INSERT_VIP 0" *) input pixel_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rst;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd pclk" *) output lcd_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 lcd_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output lcd_rst;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd hs" *) output lcd_hs;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd vs" *) output lcd_vs;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd de" *) output lcd_de;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd bl" *) output lcd_bl;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd data" *) output [15:0]data;

  wire \<const1> ;
  wire [15:0]data;
  wire lcd_de;
  wire lcd_hs;
  wire lcd_vs;
  wire pixel_clk;
  wire [23:0]rgb_data_in;
  wire rgb_hsync;
  wire rgb_vde;
  wire rgb_vsync;
  wire vid_rst;

  assign lcd_bl = \<const1> ;
  assign lcd_pclk = pixel_clk;
  assign lcd_rst = vid_rst;
  VCC VCC
       (.P(\<const1> ));
  OV5640_TFT_rgb2lcd_0_0_rgb2lcd inst
       (.data(data),
        .lcd_de(lcd_de),
        .lcd_hs(lcd_hs),
        .lcd_vs(lcd_vs),
        .pixel_clk(pixel_clk),
        .rgb_data_in({rgb_data_in[23:19],rgb_data_in[15:10],rgb_data_in[7:3]}),
        .rgb_hsync(rgb_hsync),
        .rgb_vde(rgb_vde),
        .rgb_vsync(rgb_vsync),
        .vid_rst(vid_rst));
endmodule

module OV5640_TFT_rgb2lcd_0_0_rgb2lcd
   (lcd_hs,
    lcd_vs,
    lcd_de,
    data,
    rgb_vde,
    rgb_data_in,
    rgb_hsync,
    pixel_clk,
    rgb_vsync,
    vid_rst);
  output lcd_hs;
  output lcd_vs;
  output lcd_de;
  output [15:0]data;
  input rgb_vde;
  input [15:0]rgb_data_in;
  input rgb_hsync;
  input pixel_clk;
  input rgb_vsync;
  input vid_rst;

  wire \RGB_Data[10]_i_1_n_0 ;
  wire \RGB_Data[11]_i_1_n_0 ;
  wire \RGB_Data[12]_i_1_n_0 ;
  wire \RGB_Data[13]_i_1_n_0 ;
  wire \RGB_Data[14]_i_1_n_0 ;
  wire \RGB_Data[15]_i_1_n_0 ;
  wire \RGB_Data[19]_i_1_n_0 ;
  wire \RGB_Data[20]_i_1_n_0 ;
  wire \RGB_Data[21]_i_1_n_0 ;
  wire \RGB_Data[22]_i_1_n_0 ;
  wire \RGB_Data[23]_i_1_n_0 ;
  wire \RGB_Data[3]_i_1_n_0 ;
  wire \RGB_Data[4]_i_1_n_0 ;
  wire \RGB_Data[5]_i_1_n_0 ;
  wire \RGB_Data[6]_i_1_n_0 ;
  wire \RGB_Data[7]_i_1_n_0 ;
  wire [15:0]data;
  wire lcd_de;
  wire lcd_hs;
  wire lcd_hs_i_1_n_0;
  wire lcd_vs;
  wire pixel_clk;
  wire [15:0]rgb_data_in;
  wire rgb_hsync;
  wire rgb_vde;
  wire rgb_vsync;
  wire vid_rst;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[10]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[5]),
        .O(\RGB_Data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[11]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[6]),
        .O(\RGB_Data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[12]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[7]),
        .O(\RGB_Data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[13]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[8]),
        .O(\RGB_Data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[14]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[9]),
        .O(\RGB_Data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[15]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[10]),
        .O(\RGB_Data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[19]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[11]),
        .O(\RGB_Data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[20]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[12]),
        .O(\RGB_Data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[21]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[13]),
        .O(\RGB_Data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[22]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[14]),
        .O(\RGB_Data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[23]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[15]),
        .O(\RGB_Data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[3]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[0]),
        .O(\RGB_Data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[4]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[1]),
        .O(\RGB_Data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[5]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[2]),
        .O(\RGB_Data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[6]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[3]),
        .O(\RGB_Data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RGB_Data[7]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data_in[4]),
        .O(\RGB_Data[7]_i_1_n_0 ));
  FDCE \RGB_Data_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[10]_i_1_n_0 ),
        .Q(data[5]));
  FDCE \RGB_Data_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[11]_i_1_n_0 ),
        .Q(data[6]));
  FDCE \RGB_Data_reg[12] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[12]_i_1_n_0 ),
        .Q(data[7]));
  FDCE \RGB_Data_reg[13] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[13]_i_1_n_0 ),
        .Q(data[8]));
  FDCE \RGB_Data_reg[14] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[14]_i_1_n_0 ),
        .Q(data[9]));
  FDCE \RGB_Data_reg[15] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[15]_i_1_n_0 ),
        .Q(data[10]));
  FDCE \RGB_Data_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[19]_i_1_n_0 ),
        .Q(data[11]));
  FDCE \RGB_Data_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[20]_i_1_n_0 ),
        .Q(data[12]));
  FDCE \RGB_Data_reg[21] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[21]_i_1_n_0 ),
        .Q(data[13]));
  FDCE \RGB_Data_reg[22] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[22]_i_1_n_0 ),
        .Q(data[14]));
  FDCE \RGB_Data_reg[23] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[23]_i_1_n_0 ),
        .Q(data[15]));
  FDCE \RGB_Data_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[3]_i_1_n_0 ),
        .Q(data[0]));
  FDCE \RGB_Data_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[4]_i_1_n_0 ),
        .Q(data[1]));
  FDCE \RGB_Data_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[5]_i_1_n_0 ),
        .Q(data[2]));
  FDCE \RGB_Data_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[6]_i_1_n_0 ),
        .Q(data[3]));
  FDCE \RGB_Data_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\RGB_Data[7]_i_1_n_0 ),
        .Q(data[4]));
  FDCE lcd_de_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(rgb_vde),
        .Q(lcd_de));
  LUT1 #(
    .INIT(2'h1)) 
    lcd_hs_i_1
       (.I0(vid_rst),
        .O(lcd_hs_i_1_n_0));
  FDCE lcd_hs_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(rgb_hsync),
        .Q(lcd_hs));
  FDCE lcd_vs_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(rgb_vsync),
        .Q(lcd_vs));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
