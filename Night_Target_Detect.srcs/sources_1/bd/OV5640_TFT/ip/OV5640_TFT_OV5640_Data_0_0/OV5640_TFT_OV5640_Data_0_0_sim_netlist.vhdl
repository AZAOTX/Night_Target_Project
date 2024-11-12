-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Sep 30 18:59:45 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top OV5640_TFT_OV5640_Data_0_0 -prefix
--               OV5640_TFT_OV5640_Data_0_0_ OV5640_TFT_OV5640_Data_0_0_sim_netlist.vhdl
-- Design      : OV5640_TFT_OV5640_Data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OV5640_TFT_OV5640_Data_0_0_OV5640_Data is
  port (
    Frame_Ce : out STD_LOGIC;
    DataPixel : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DataValid : out STD_LOGIC;
    Frame_Vsync : out STD_LOGIC;
    Vsync : in STD_LOGIC;
    PCLK : in STD_LOGIC;
    Href : in STD_LOGIC;
    Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_n : in STD_LOGIC
  );
end OV5640_TFT_OV5640_Data_0_0_OV5640_Data;

architecture STRUCTURE of OV5640_TFT_OV5640_Data_0_0_OV5640_Data is
  signal Dump_Frame : STD_LOGIC;
  signal Dump_Frame_i_1_n_0 : STD_LOGIC;
  signal FrameCnt1_n_0 : STD_LOGIC;
  signal \FrameCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \FrameCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \FrameCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \FrameCnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \FrameCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Hcount[0]_i_1_n_0\ : STD_LOGIC;
  signal Hcount_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal r_DataPixel : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_DataPixel[15]_i_1_n_0\ : STD_LOGIC;
  signal r_Href : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DataPixel[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DataPixel[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DataPixel[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DataPixel[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DataPixel[14]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DataPixel[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DataPixel[19]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DataPixel[20]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DataPixel[21]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DataPixel[22]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DataPixel[23]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DataPixel[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DataPixel[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DataPixel[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DataPixel[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DataPixel[7]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of DataValid_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FrameCnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FrameCnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FrameCnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FrameCnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Frame_Ce__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Frame_Vsync_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Hcount[0]_i_1\ : label is "soft_lutpair2";
begin
\DataPixel[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(5),
      O => DataPixel(5)
    );
\DataPixel[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(6),
      O => DataPixel(6)
    );
\DataPixel[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(7),
      O => DataPixel(7)
    );
\DataPixel[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(8),
      O => DataPixel(8)
    );
\DataPixel[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(9),
      O => DataPixel(9)
    );
\DataPixel[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(10),
      O => DataPixel(10)
    );
\DataPixel[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(11),
      O => DataPixel(11)
    );
\DataPixel[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(12),
      O => DataPixel(12)
    );
\DataPixel[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(13),
      O => DataPixel(13)
    );
\DataPixel[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(14),
      O => DataPixel(14)
    );
\DataPixel[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(15),
      O => DataPixel(15)
    );
\DataPixel[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(0),
      O => DataPixel(0)
    );
\DataPixel[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(1),
      O => DataPixel(1)
    );
\DataPixel[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(2),
      O => DataPixel(2)
    );
\DataPixel[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(3),
      O => DataPixel(3)
    );
\DataPixel[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Dump_Frame,
      I1 => r_DataPixel(4),
      O => DataPixel(4)
    );
DataValid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_Href,
      I1 => Dump_Frame,
      O => DataValid
    );
Dump_Frame_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Rst_n,
      O => Dump_Frame_i_1_n_0
    );
Dump_Frame_reg: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => Dump_Frame_i_1_n_0,
      D => FrameCnt1_n_0,
      Q => Dump_Frame
    );
FrameCnt1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FrameCnt_reg__0\(3),
      I1 => \FrameCnt_reg__0\(1),
      I2 => \FrameCnt_reg__0\(2),
      O => FrameCnt1_n_0
    );
\FrameCnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \FrameCnt_reg_n_0_[0]\,
      I1 => \FrameCnt_reg__0\(2),
      I2 => \FrameCnt_reg__0\(1),
      I3 => \FrameCnt_reg__0\(3),
      O => \FrameCnt[0]_i_1_n_0\
    );
\FrameCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFF8"
    )
        port map (
      I0 => \FrameCnt_reg__0\(2),
      I1 => \FrameCnt_reg__0\(3),
      I2 => \FrameCnt_reg__0\(1),
      I3 => \FrameCnt_reg_n_0_[0]\,
      O => p_0_in(1)
    );
\FrameCnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006C"
    )
        port map (
      I0 => \FrameCnt_reg_n_0_[0]\,
      I1 => \FrameCnt_reg__0\(2),
      I2 => \FrameCnt_reg__0\(1),
      I3 => \FrameCnt_reg__0\(3),
      O => \FrameCnt[2]_i_1_n_0\
    );
\FrameCnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Vsync,
      I1 => p_0_in_0(1),
      O => \FrameCnt[3]_i_1_n_0\
    );
\FrameCnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \FrameCnt_reg__0\(3),
      I1 => \FrameCnt_reg__0\(2),
      I2 => \FrameCnt_reg_n_0_[0]\,
      I3 => \FrameCnt_reg__0\(1),
      O => p_0_in(3)
    );
\FrameCnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \FrameCnt[3]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => \FrameCnt[0]_i_1_n_0\,
      Q => \FrameCnt_reg_n_0_[0]\
    );
\FrameCnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \FrameCnt[3]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_0_in(1),
      Q => \FrameCnt_reg__0\(1)
    );
\FrameCnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \FrameCnt[3]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => \FrameCnt[2]_i_1_n_0\,
      Q => \FrameCnt_reg__0\(2)
    );
\FrameCnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \FrameCnt[3]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_0_in(3),
      Q => \FrameCnt_reg__0\(3)
    );
\Frame_Ce__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => r_Href,
      I1 => Hcount_reg(0),
      I2 => Dump_Frame,
      O => Frame_Ce
    );
Frame_Vsync_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => Dump_Frame,
      O => Frame_Vsync
    );
\Hcount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => Hcount_reg(0),
      I1 => r_Href,
      O => \Hcount[0]_i_1_n_0\
    );
\Hcount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => '1',
      CLR => Dump_Frame_i_1_n_0,
      D => \Hcount[0]_i_1_n_0\,
      Q => Hcount_reg(0)
    );
\r_DataPixel[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Hcount_reg(0),
      O => \r_DataPixel[15]_i_1_n_0\
    );
\r_DataPixel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(0),
      Q => r_DataPixel(0)
    );
\r_DataPixel_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(10),
      Q => r_DataPixel(10)
    );
\r_DataPixel_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(11),
      Q => r_DataPixel(11)
    );
\r_DataPixel_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(12),
      Q => r_DataPixel(12)
    );
\r_DataPixel_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(13),
      Q => r_DataPixel(13)
    );
\r_DataPixel_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(14),
      Q => r_DataPixel(14)
    );
\r_DataPixel_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(15),
      Q => r_DataPixel(15)
    );
\r_DataPixel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(1),
      Q => r_DataPixel(1)
    );
\r_DataPixel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(2),
      Q => r_DataPixel(2)
    );
\r_DataPixel_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(3),
      Q => r_DataPixel(3)
    );
\r_DataPixel_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(4),
      Q => r_DataPixel(4)
    );
\r_DataPixel_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(5),
      Q => r_DataPixel(5)
    );
\r_DataPixel_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(6),
      Q => r_DataPixel(6)
    );
\r_DataPixel_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => Data(7),
      Q => r_DataPixel(7)
    );
\r_DataPixel_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(8),
      Q => r_DataPixel(8)
    );
\r_DataPixel_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => PCLK,
      CE => \r_DataPixel[15]_i_1_n_0\,
      CLR => Dump_Frame_i_1_n_0,
      D => p_1_in(9),
      Q => r_DataPixel(9)
    );
\r_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(0),
      Q => p_1_in(8),
      R => '0'
    );
\r_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(1),
      Q => p_1_in(9),
      R => '0'
    );
\r_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(2),
      Q => p_1_in(10),
      R => '0'
    );
\r_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(3),
      Q => p_1_in(11),
      R => '0'
    );
\r_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(4),
      Q => p_1_in(12),
      R => '0'
    );
\r_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(5),
      Q => p_1_in(13),
      R => '0'
    );
\r_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(6),
      Q => p_1_in(14),
      R => '0'
    );
\r_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Data(7),
      Q => p_1_in(15),
      R => '0'
    );
r_Href_reg: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Href,
      Q => r_Href,
      R => '0'
    );
r_Vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => PCLK,
      CE => '1',
      D => Vsync,
      Q => p_0_in_0(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OV5640_TFT_OV5640_Data_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of OV5640_TFT_OV5640_Data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of OV5640_TFT_OV5640_Data_0_0 : entity is "OV5640_TFT_OV5640_Data_0_0,OV5640_Data,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of OV5640_TFT_OV5640_Data_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of OV5640_TFT_OV5640_Data_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of OV5640_TFT_OV5640_Data_0_0 : entity is "OV5640_Data,Vivado 2018.3";
end OV5640_TFT_OV5640_Data_0_0;

architecture STRUCTURE of OV5640_TFT_OV5640_Data_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^datapixel\ : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal \^pclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Cam_Rst_n : signal is "xilinx.com:signal:reset:1.0 Cam_Rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Cam_Rst_n : signal is "XIL_INTERFACENAME Cam_Rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of DataValid : signal is "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of Frame_Clk : signal is "xilinx.com:signal:clock:1.0 Frame_Clk CLK";
  attribute X_INTERFACE_PARAMETER of Frame_Clk : signal is "XIL_INTERFACENAME Frame_Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN OV5640_TFT_OV5640_Data_0_0_Frame_Clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Frame_Vsync : signal is "xilinx.com:interface:vid_io:1.0 RGB VSYNC";
  attribute X_INTERFACE_INFO of Rst_n : signal is "xilinx.com:signal:reset:1.0 Rst_n RST";
  attribute X_INTERFACE_PARAMETER of Rst_n : signal is "XIL_INTERFACENAME Rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of DataPixel : signal is "xilinx.com:interface:vid_io:1.0 RGB DATA";
begin
  Cam_Pwdn <= \<const0>\;
  Cam_Rst_n <= \<const1>\;
  DataPixel(23 downto 19) <= \^datapixel\(23 downto 19);
  DataPixel(18) <= \<const0>\;
  DataPixel(17) <= \<const0>\;
  DataPixel(16) <= \<const0>\;
  DataPixel(15 downto 10) <= \^datapixel\(15 downto 10);
  DataPixel(9) <= \<const0>\;
  DataPixel(8) <= \<const0>\;
  DataPixel(7 downto 3) <= \^datapixel\(7 downto 3);
  DataPixel(2) <= \<const0>\;
  DataPixel(1) <= \<const0>\;
  DataPixel(0) <= \<const0>\;
  Frame_Clk <= \^pclk\;
  \^pclk\ <= PCLK;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.OV5640_TFT_OV5640_Data_0_0_OV5640_Data
     port map (
      Data(7 downto 0) => Data(7 downto 0),
      DataPixel(15 downto 11) => \^datapixel\(23 downto 19),
      DataPixel(10 downto 5) => \^datapixel\(15 downto 10),
      DataPixel(4 downto 0) => \^datapixel\(7 downto 3),
      DataValid => DataValid,
      Frame_Ce => Frame_Ce,
      Frame_Vsync => Frame_Vsync,
      Href => Href,
      PCLK => \^pclk\,
      Rst_n => Rst_n,
      Vsync => Vsync
    );
end STRUCTURE;
