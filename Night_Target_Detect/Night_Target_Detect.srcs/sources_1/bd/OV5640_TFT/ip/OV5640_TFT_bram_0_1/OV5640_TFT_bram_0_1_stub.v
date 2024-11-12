// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  4 15:12:20 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/VivadoProject/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_bram_0_1/OV5640_TFT_bram_0_1_stub.v
// Design      : OV5640_TFT_bram_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bram,Vivado 2018.3" *)
module OV5640_TFT_bram_0_1(clk_bram, rst_n, addrb, doutb, write_state, enb, 
  dinb, web)
/* synthesis syn_black_box black_box_pad_pin="clk_bram,rst_n,addrb[31:0],doutb[31:0],write_state,enb,dinb[31:0],web[3:0]" */;
  input clk_bram;
  input rst_n;
  output [31:0]addrb;
  input [31:0]doutb;
  input write_state;
  output enb;
  output [31:0]dinb;
  output [3:0]web;
endmodule
