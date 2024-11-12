-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Sep 30 18:59:45 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top OV5640_TFT_rgb565to888_0_0 -prefix
--               OV5640_TFT_rgb565to888_0_0_ OV5640_TFT_rgb565to888_0_0_stub.vhdl
-- Design      : OV5640_TFT_rgb565to888_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OV5640_TFT_rgb565to888_0_0 is
  Port ( 
    m_clk : in STD_LOGIC;
    s_clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC
  );

end OV5640_TFT_rgb565to888_0_0;

architecture stub of OV5640_TFT_rgb565to888_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_clk,s_clk,s_axis_tdata[15:0],s_axis_tlast,s_axis_tready,s_axis_tuser,s_axis_tvalid,m_axis_tdata[23:0],m_axis_tlast,m_axis_tready,m_axis_tuser,m_axis_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgb565to888,Vivado 2018.3";
begin
end;
