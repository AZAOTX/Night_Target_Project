-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Sep 30 18:59:41 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top OV5640_TFT_rgb2lcd_0_0 -prefix
--               OV5640_TFT_rgb2lcd_0_0_ OV5640_TFT_rgb2lcd_0_0_stub.vhdl
-- Design      : OV5640_TFT_rgb2lcd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OV5640_TFT_rgb2lcd_0_0 is
  Port ( 
    rgb_data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_vde : in STD_LOGIC;
    rgb_hsync : in STD_LOGIC;
    rgb_vsync : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    vid_rst : in STD_LOGIC;
    lcd_pclk : out STD_LOGIC;
    lcd_rst : out STD_LOGIC;
    lcd_hs : out STD_LOGIC;
    lcd_vs : out STD_LOGIC;
    lcd_de : out STD_LOGIC;
    lcd_bl : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end OV5640_TFT_rgb2lcd_0_0;

architecture stub of OV5640_TFT_rgb2lcd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rgb_data_in[23:0],rgb_vde,rgb_hsync,rgb_vsync,pixel_clk,vid_rst,lcd_pclk,lcd_rst,lcd_hs,lcd_vs,lcd_de,lcd_bl,data[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgb2lcd,Vivado 2018.3";
begin
end;
