// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct  1 10:20:54 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top OV5640_TFT_clk_wiz_0_0 -prefix
//               OV5640_TFT_clk_wiz_0_0_ OV5640_TFT_clk_wiz_0_0_stub.v
// Design      : OV5640_TFT_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module OV5640_TFT_clk_wiz_0_0(clk_out1, resetn, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,clk_in1" */;
  output clk_out1;
  input resetn;
  input clk_in1;
endmodule
