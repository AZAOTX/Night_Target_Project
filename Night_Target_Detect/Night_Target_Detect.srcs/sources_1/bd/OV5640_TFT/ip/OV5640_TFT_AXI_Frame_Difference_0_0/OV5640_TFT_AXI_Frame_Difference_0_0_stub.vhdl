-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Nov  9 11:48:20 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_AXI_Frame_Difference_0_0/OV5640_TFT_AXI_Frame_Difference_0_0_stub.vhdl
-- Design      : OV5640_TFT_AXI_Frame_Difference_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OV5640_TFT_AXI_Frame_Difference_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    key_press0 : in STD_LOGIC;
    key_press1 : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    s0_axis_tuser : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    s1_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s1_axis_tvalid : in STD_LOGIC;
    s1_axis_tready : out STD_LOGIC;
    s1_axis_tuser : in STD_LOGIC;
    s1_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    diff_flag : out STD_LOGIC
  );

end OV5640_TFT_AXI_Frame_Difference_0_0;

architecture stub of OV5640_TFT_AXI_Frame_Difference_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,key_press0,key_press1,s0_axis_tdata[23:0],s0_axis_tvalid,s0_axis_tready,s0_axis_tuser,s0_axis_tlast,s1_axis_tdata[23:0],s1_axis_tvalid,s1_axis_tready,s1_axis_tuser,s1_axis_tlast,m_axis_tdata[23:0],m_axis_tvalid,m_axis_tready,m_axis_tuser,m_axis_tlast,diff_flag";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXI_Frame_Difference,Vivado 2018.3";
begin
end;
