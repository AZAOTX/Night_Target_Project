// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 30 18:59:45 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top OV5640_TFT_OV5640_Data_0_0 -prefix
//               OV5640_TFT_OV5640_Data_0_0_ OV5640_TFT_OV5640_Data_0_0_stub.v
// Design      : OV5640_TFT_OV5640_Data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "OV5640_Data,Vivado 2018.3" *)
module OV5640_TFT_OV5640_Data_0_0(Rst_n, PCLK, Vsync, Href, Data, DataValid, DataPixel, 
  Cam_Rst_n, Cam_Pwdn, Frame_Clk, Frame_Ce, Frame_Vsync)
/* synthesis syn_black_box black_box_pad_pin="Rst_n,PCLK,Vsync,Href,Data[7:0],DataValid,DataPixel[23:0],Cam_Rst_n,Cam_Pwdn,Frame_Clk,Frame_Ce,Frame_Vsync" */;
  input Rst_n;
  input PCLK;
  input Vsync;
  input Href;
  input [7:0]Data;
  output DataValid;
  output [23:0]DataPixel;
  output Cam_Rst_n;
  output Cam_Pwdn;
  output Frame_Clk;
  output Frame_Ce;
  output Frame_Vsync;
endmodule
