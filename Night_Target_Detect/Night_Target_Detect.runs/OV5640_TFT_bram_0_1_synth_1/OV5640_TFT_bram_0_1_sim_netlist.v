// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 15:12:20 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OV5640_TFT_bram_0_1_sim_netlist.v
// Design      : OV5640_TFT_bram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OV5640_TFT_bram_0_1,bram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bram,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_bram,
    rst_n,
    addrb,
    doutb,
    write_state,
    enb,
    dinb,
    web);
  input clk_bram;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output [31:0]addrb;
  input [31:0]doutb;
  input write_state;
  output enb;
  output [31:0]dinb;
  output [3:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_bram;
  wire [0:0]\^dinb ;
  wire rst_n;
  wire [0:0]\^web ;
  wire write_state;

  assign addrb[31] = \<const0> ;
  assign addrb[30] = \<const0> ;
  assign addrb[29] = \<const0> ;
  assign addrb[28] = \<const0> ;
  assign addrb[27] = \<const0> ;
  assign addrb[26] = \<const0> ;
  assign addrb[25] = \<const0> ;
  assign addrb[24] = \<const0> ;
  assign addrb[23] = \<const0> ;
  assign addrb[22] = \<const0> ;
  assign addrb[21] = \<const0> ;
  assign addrb[20] = \<const0> ;
  assign addrb[19] = \<const0> ;
  assign addrb[18] = \<const0> ;
  assign addrb[17] = \<const0> ;
  assign addrb[16] = \<const0> ;
  assign addrb[15] = \<const0> ;
  assign addrb[14] = \<const0> ;
  assign addrb[13] = \<const0> ;
  assign addrb[12] = \<const0> ;
  assign addrb[11] = \<const0> ;
  assign addrb[10] = \<const0> ;
  assign addrb[9] = \<const0> ;
  assign addrb[8] = \<const0> ;
  assign addrb[7] = \<const0> ;
  assign addrb[6] = \<const0> ;
  assign addrb[5] = \<const0> ;
  assign addrb[4] = \<const0> ;
  assign addrb[3] = \<const0> ;
  assign addrb[2] = \<const0> ;
  assign addrb[1] = \<const0> ;
  assign addrb[0] = \<const0> ;
  assign dinb[31] = \<const0> ;
  assign dinb[30] = \<const0> ;
  assign dinb[29] = \<const0> ;
  assign dinb[28] = \<const0> ;
  assign dinb[27] = \<const0> ;
  assign dinb[26] = \<const0> ;
  assign dinb[25] = \<const0> ;
  assign dinb[24] = \<const0> ;
  assign dinb[23] = \<const0> ;
  assign dinb[22] = \<const0> ;
  assign dinb[21] = \<const0> ;
  assign dinb[20] = \<const0> ;
  assign dinb[19] = \<const0> ;
  assign dinb[18] = \<const0> ;
  assign dinb[17] = \<const0> ;
  assign dinb[16] = \<const0> ;
  assign dinb[15] = \<const0> ;
  assign dinb[14] = \<const0> ;
  assign dinb[13] = \<const0> ;
  assign dinb[12] = \<const0> ;
  assign dinb[11] = \<const0> ;
  assign dinb[10] = \<const0> ;
  assign dinb[9] = \<const0> ;
  assign dinb[8] = \<const0> ;
  assign dinb[7] = \<const0> ;
  assign dinb[6] = \<const0> ;
  assign dinb[5] = \<const0> ;
  assign dinb[4] = \<const0> ;
  assign dinb[3] = \<const0> ;
  assign dinb[2] = \<const0> ;
  assign dinb[1] = \<const0> ;
  assign dinb[0] = \^dinb [0];
  assign enb = \<const1> ;
  assign web[3] = \<const0> ;
  assign web[2] = \<const0> ;
  assign web[1] = \<const0> ;
  assign web[0] = \^web [0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bram inst
       (.clk_bram(clk_bram),
        .dinb(\^dinb ),
        .rst_n(rst_n),
        .web(\^web ),
        .write_state(write_state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bram
   (web,
    dinb,
    rst_n,
    write_state,
    clk_bram);
  output [0:0]web;
  output [0:0]dinb;
  input rst_n;
  input write_state;
  input clk_bram;

  wire clk_bram;
  wire [0:0]dinb;
  wire \dinb[0]_i_1_n_0 ;
  wire rst_n;
  wire [0:0]web;
  wire write_state;

  LUT2 #(
    .INIT(4'h8)) 
    \dinb[0]_i_1 
       (.I0(rst_n),
        .I1(write_state),
        .O(\dinb[0]_i_1_n_0 ));
  FDRE \dinb_reg[0] 
       (.C(clk_bram),
        .CE(1'b1),
        .D(\dinb[0]_i_1_n_0 ),
        .Q(dinb),
        .R(1'b0));
  FDRE \web_reg[0] 
       (.C(clk_bram),
        .CE(1'b1),
        .D(rst_n),
        .Q(web),
        .R(1'b0));
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
