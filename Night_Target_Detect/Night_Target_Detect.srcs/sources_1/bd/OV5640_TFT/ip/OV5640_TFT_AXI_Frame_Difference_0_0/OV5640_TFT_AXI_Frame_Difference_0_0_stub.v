// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  9 11:48:20 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_AXI_Frame_Difference_0_0/OV5640_TFT_AXI_Frame_Difference_0_0_stub.v
// Design      : OV5640_TFT_AXI_Frame_Difference_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXI_Frame_Difference,Vivado 2018.3" *)
module OV5640_TFT_AXI_Frame_Difference_0_0(clk, rst_n, key_press0, key_press1, 
  s0_axis_tdata, s0_axis_tvalid, s0_axis_tready, s0_axis_tuser, s0_axis_tlast, s1_axis_tdata, 
  s1_axis_tvalid, s1_axis_tready, s1_axis_tuser, s1_axis_tlast, m_axis_tdata, m_axis_tvalid, 
  m_axis_tready, m_axis_tuser, m_axis_tlast, diff_flag)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,key_press0,key_press1,s0_axis_tdata[23:0],s0_axis_tvalid,s0_axis_tready,s0_axis_tuser,s0_axis_tlast,s1_axis_tdata[23:0],s1_axis_tvalid,s1_axis_tready,s1_axis_tuser,s1_axis_tlast,m_axis_tdata[23:0],m_axis_tvalid,m_axis_tready,m_axis_tuser,m_axis_tlast,diff_flag" */;
  input clk;
  input rst_n;
  input key_press0;
  input key_press1;
  input [23:0]s0_axis_tdata;
  input s0_axis_tvalid;
  output s0_axis_tready;
  input s0_axis_tuser;
  input s0_axis_tlast;
  input [23:0]s1_axis_tdata;
  input s1_axis_tvalid;
  output s1_axis_tready;
  input s1_axis_tuser;
  input s1_axis_tlast;
  output [23:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tuser;
  output m_axis_tlast;
  output diff_flag;
endmodule
