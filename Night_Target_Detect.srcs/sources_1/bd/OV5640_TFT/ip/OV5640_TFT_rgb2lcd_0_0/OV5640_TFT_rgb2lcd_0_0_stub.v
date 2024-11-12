// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Sep 30 18:59:41 2024
// Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top OV5640_TFT_rgb2lcd_0_0 -prefix
//               OV5640_TFT_rgb2lcd_0_0_ OV5640_TFT_rgb2lcd_0_0_stub.v
// Design      : OV5640_TFT_rgb2lcd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rgb2lcd,Vivado 2018.3" *)
module OV5640_TFT_rgb2lcd_0_0(rgb_data_in, rgb_vde, rgb_hsync, rgb_vsync, 
  pixel_clk, vid_rst, lcd_pclk, lcd_rst, lcd_hs, lcd_vs, lcd_de, lcd_bl, data)
/* synthesis syn_black_box black_box_pad_pin="rgb_data_in[23:0],rgb_vde,rgb_hsync,rgb_vsync,pixel_clk,vid_rst,lcd_pclk,lcd_rst,lcd_hs,lcd_vs,lcd_de,lcd_bl,data[15:0]" */;
  input [23:0]rgb_data_in;
  input rgb_vde;
  input rgb_hsync;
  input rgb_vsync;
  input pixel_clk;
  input vid_rst;
  output lcd_pclk;
  output lcd_rst;
  output lcd_hs;
  output lcd_vs;
  output lcd_de;
  output lcd_bl;
  output [15:0]data;
endmodule
