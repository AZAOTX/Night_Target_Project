-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Nov  4 15:12:20 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/VivadoProject/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_bram_0_1/OV5640_TFT_bram_0_1_stub.vhdl
-- Design      : OV5640_TFT_bram_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OV5640_TFT_bram_0_1 is
  Port ( 
    clk_bram : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_state : in STD_LOGIC;
    enb : out STD_LOGIC;
    dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    web : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end OV5640_TFT_bram_0_1;

architecture stub of OV5640_TFT_bram_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_bram,rst_n,addrb[31:0],doutb[31:0],write_state,enb,dinb[31:0],web[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bram,Vivado 2018.3";
begin
end;
