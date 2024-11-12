// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 30 18:59:45 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top OV5640_TFT_OV5640_Data_0_0 -prefix
//               OV5640_TFT_OV5640_Data_0_0_ OV5640_TFT_OV5640_Data_0_0_sim_netlist.v
// Design      : OV5640_TFT_OV5640_Data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OV5640_TFT_OV5640_Data_0_0_OV5640_Data
   (Frame_Ce,
    DataPixel,
    DataValid,
    Frame_Vsync,
    Vsync,
    PCLK,
    Href,
    Data,
    Rst_n);
  output Frame_Ce;
  output [15:0]DataPixel;
  output DataValid;
  output Frame_Vsync;
  input Vsync;
  input PCLK;
  input Href;
  input [7:0]Data;
  input Rst_n;

  wire [7:0]Data;
  wire [15:0]DataPixel;
  wire DataValid;
  wire Dump_Frame;
  wire Dump_Frame_i_1_n_0;
  wire FrameCnt1_n_0;
  wire \FrameCnt[0]_i_1_n_0 ;
  wire \FrameCnt[2]_i_1_n_0 ;
  wire \FrameCnt[3]_i_1_n_0 ;
  wire [3:1]FrameCnt_reg__0;
  wire \FrameCnt_reg_n_0_[0] ;
  wire Frame_Ce;
  wire Frame_Vsync;
  wire \Hcount[0]_i_1_n_0 ;
  wire [0:0]Hcount_reg;
  wire Href;
  wire PCLK;
  wire Rst_n;
  wire Vsync;
  wire [3:1]p_0_in;
  wire [1:1]p_0_in_0;
  wire [15:8]p_1_in;
  wire [15:0]r_DataPixel;
  wire \r_DataPixel[15]_i_1_n_0 ;
  wire r_Href;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[10]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[5]),
        .O(DataPixel[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[11]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[6]),
        .O(DataPixel[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[12]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[7]),
        .O(DataPixel[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[13]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[8]),
        .O(DataPixel[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[14]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[9]),
        .O(DataPixel[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[15]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[10]),
        .O(DataPixel[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[19]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[11]),
        .O(DataPixel[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[20]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[12]),
        .O(DataPixel[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[21]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[13]),
        .O(DataPixel[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[22]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[14]),
        .O(DataPixel[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[23]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[15]),
        .O(DataPixel[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[3]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[0]),
        .O(DataPixel[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[4]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[1]),
        .O(DataPixel[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[5]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[2]),
        .O(DataPixel[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[6]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[3]),
        .O(DataPixel[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataPixel[7]_INST_0 
       (.I0(Dump_Frame),
        .I1(r_DataPixel[4]),
        .O(DataPixel[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    DataValid_INST_0
       (.I0(r_Href),
        .I1(Dump_Frame),
        .O(DataValid));
  LUT1 #(
    .INIT(2'h1)) 
    Dump_Frame_i_1
       (.I0(Rst_n),
        .O(Dump_Frame_i_1_n_0));
  FDCE Dump_Frame_reg
       (.C(PCLK),
        .CE(1'b1),
        .CLR(Dump_Frame_i_1_n_0),
        .D(FrameCnt1_n_0),
        .Q(Dump_Frame));
  LUT3 #(
    .INIT(8'hA8)) 
    FrameCnt1
       (.I0(FrameCnt_reg__0[3]),
        .I1(FrameCnt_reg__0[1]),
        .I2(FrameCnt_reg__0[2]),
        .O(FrameCnt1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \FrameCnt[0]_i_1 
       (.I0(\FrameCnt_reg_n_0_[0] ),
        .I1(FrameCnt_reg__0[2]),
        .I2(FrameCnt_reg__0[1]),
        .I3(FrameCnt_reg__0[3]),
        .O(\FrameCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCFF8)) 
    \FrameCnt[1]_i_1 
       (.I0(FrameCnt_reg__0[2]),
        .I1(FrameCnt_reg__0[3]),
        .I2(FrameCnt_reg__0[1]),
        .I3(\FrameCnt_reg_n_0_[0] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    \FrameCnt[2]_i_1 
       (.I0(\FrameCnt_reg_n_0_[0] ),
        .I1(FrameCnt_reg__0[2]),
        .I2(FrameCnt_reg__0[1]),
        .I3(FrameCnt_reg__0[3]),
        .O(\FrameCnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FrameCnt[3]_i_1 
       (.I0(Vsync),
        .I1(p_0_in_0),
        .O(\FrameCnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FrameCnt[3]_i_2 
       (.I0(FrameCnt_reg__0[3]),
        .I1(FrameCnt_reg__0[2]),
        .I2(\FrameCnt_reg_n_0_[0] ),
        .I3(FrameCnt_reg__0[1]),
        .O(p_0_in[3]));
  FDCE \FrameCnt_reg[0] 
       (.C(PCLK),
        .CE(\FrameCnt[3]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(\FrameCnt[0]_i_1_n_0 ),
        .Q(\FrameCnt_reg_n_0_[0] ));
  FDCE \FrameCnt_reg[1] 
       (.C(PCLK),
        .CE(\FrameCnt[3]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_0_in[1]),
        .Q(FrameCnt_reg__0[1]));
  FDCE \FrameCnt_reg[2] 
       (.C(PCLK),
        .CE(\FrameCnt[3]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(\FrameCnt[2]_i_1_n_0 ),
        .Q(FrameCnt_reg__0[2]));
  FDCE \FrameCnt_reg[3] 
       (.C(PCLK),
        .CE(\FrameCnt[3]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_0_in[3]),
        .Q(FrameCnt_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    Frame_Ce__0
       (.I0(r_Href),
        .I1(Hcount_reg),
        .I2(Dump_Frame),
        .O(Frame_Ce));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Frame_Vsync_INST_0
       (.I0(p_0_in_0),
        .I1(Dump_Frame),
        .O(Frame_Vsync));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \Hcount[0]_i_1 
       (.I0(Hcount_reg),
        .I1(r_Href),
        .O(\Hcount[0]_i_1_n_0 ));
  FDCE \Hcount_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .CLR(Dump_Frame_i_1_n_0),
        .D(\Hcount[0]_i_1_n_0 ),
        .Q(Hcount_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \r_DataPixel[15]_i_1 
       (.I0(Hcount_reg),
        .O(\r_DataPixel[15]_i_1_n_0 ));
  FDCE \r_DataPixel_reg[0] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[0]),
        .Q(r_DataPixel[0]));
  FDCE \r_DataPixel_reg[10] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[10]),
        .Q(r_DataPixel[10]));
  FDCE \r_DataPixel_reg[11] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[11]),
        .Q(r_DataPixel[11]));
  FDCE \r_DataPixel_reg[12] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[12]),
        .Q(r_DataPixel[12]));
  FDCE \r_DataPixel_reg[13] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[13]),
        .Q(r_DataPixel[13]));
  FDCE \r_DataPixel_reg[14] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[14]),
        .Q(r_DataPixel[14]));
  FDCE \r_DataPixel_reg[15] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[15]),
        .Q(r_DataPixel[15]));
  FDCE \r_DataPixel_reg[1] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[1]),
        .Q(r_DataPixel[1]));
  FDCE \r_DataPixel_reg[2] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[2]),
        .Q(r_DataPixel[2]));
  FDCE \r_DataPixel_reg[3] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[3]),
        .Q(r_DataPixel[3]));
  FDCE \r_DataPixel_reg[4] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[4]),
        .Q(r_DataPixel[4]));
  FDCE \r_DataPixel_reg[5] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[5]),
        .Q(r_DataPixel[5]));
  FDCE \r_DataPixel_reg[6] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[6]),
        .Q(r_DataPixel[6]));
  FDCE \r_DataPixel_reg[7] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(Data[7]),
        .Q(r_DataPixel[7]));
  FDCE \r_DataPixel_reg[8] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[8]),
        .Q(r_DataPixel[8]));
  FDCE \r_DataPixel_reg[9] 
       (.C(PCLK),
        .CE(\r_DataPixel[15]_i_1_n_0 ),
        .CLR(Dump_Frame_i_1_n_0),
        .D(p_1_in[9]),
        .Q(r_DataPixel[9]));
  FDRE \r_Data_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[0]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \r_Data_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[1]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \r_Data_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[2]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \r_Data_reg[3] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[3]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \r_Data_reg[4] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[4]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \r_Data_reg[5] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[5]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \r_Data_reg[6] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[6]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \r_Data_reg[7] 
       (.C(PCLK),
        .CE(1'b1),
        .D(Data[7]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE r_Href_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(Href),
        .Q(r_Href),
        .R(1'b0));
  FDRE r_Vsync_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(Vsync),
        .Q(p_0_in_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "OV5640_TFT_OV5640_Data_0_0,OV5640_Data,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "OV5640_Data,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module OV5640_TFT_OV5640_Data_0_0
   (Rst_n,
    PCLK,
    Vsync,
    Href,
    Data,
    DataValid,
    DataPixel,
    Cam_Rst_n,
    Cam_Pwdn,
    Frame_Clk,
    Frame_Ce,
    Frame_Vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst_n;
  input PCLK;
  input Vsync;
  input Href;
  input [7:0]Data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) output DataValid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) output [23:0]DataPixel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Cam_Rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Cam_Rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output Cam_Rst_n;
  output Cam_Pwdn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Frame_Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Frame_Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN OV5640_TFT_OV5640_Data_0_0_Frame_Clk, INSERT_VIP 0" *) output Frame_Clk;
  output Frame_Ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) output Frame_Vsync;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]Data;
  wire [23:3]\^DataPixel ;
  wire DataValid;
  wire Frame_Ce;
  wire Frame_Vsync;
  wire Href;
  wire PCLK;
  wire Rst_n;
  wire Vsync;

  assign Cam_Pwdn = \<const0> ;
  assign Cam_Rst_n = \<const1> ;
  assign DataPixel[23:19] = \^DataPixel [23:19];
  assign DataPixel[18] = \<const0> ;
  assign DataPixel[17] = \<const0> ;
  assign DataPixel[16] = \<const0> ;
  assign DataPixel[15:10] = \^DataPixel [15:10];
  assign DataPixel[9] = \<const0> ;
  assign DataPixel[8] = \<const0> ;
  assign DataPixel[7:3] = \^DataPixel [7:3];
  assign DataPixel[2] = \<const0> ;
  assign DataPixel[1] = \<const0> ;
  assign DataPixel[0] = \<const0> ;
  assign Frame_Clk = PCLK;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  OV5640_TFT_OV5640_Data_0_0_OV5640_Data inst
       (.Data(Data),
        .DataPixel({\^DataPixel [23:19],\^DataPixel [15:10],\^DataPixel [7:3]}),
        .DataValid(DataValid),
        .Frame_Ce(Frame_Ce),
        .Frame_Vsync(Frame_Vsync),
        .Href(Href),
        .PCLK(PCLK),
        .Rst_n(Rst_n),
        .Vsync(Vsync));
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
