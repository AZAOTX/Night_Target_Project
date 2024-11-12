-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Sep 30 18:59:45 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top OV5640_TFT_OV5640_Data_0_0 -prefix
--               OV5640_TFT_OV5640_Data_0_0_ OV5640_TFT_OV5640_Data_0_0_stub.vhdl
-- Design      : OV5640_TFT_OV5640_Data_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OV5640_TFT_OV5640_Data_0_0 is
  Port ( 
    Rst_n : in STD_LOGIC;
    PCLK : in STD_LOGIC;
    Vsync : in STD_LOGIC;
    Href : in STD_LOGIC;
    Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DataValid : out STD_LOGIC;
    DataPixel : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Cam_Rst_n : out STD_LOGIC;
    Cam_Pwdn : out STD_LOGIC;
    Frame_Clk : out STD_LOGIC;
    Frame_Ce : out STD_LOGIC;
    Frame_Vsync : out STD_LOGIC
  );

end OV5640_TFT_OV5640_Data_0_0;

architecture stub of OV5640_TFT_OV5640_Data_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Rst_n,PCLK,Vsync,Href,Data[7:0],DataValid,DataPixel[23:0],Cam_Rst_n,Cam_Pwdn,Frame_Clk,Frame_Ce,Frame_Vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "OV5640_Data,Vivado 2018.3";
begin
end;
