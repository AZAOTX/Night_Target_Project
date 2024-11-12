-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Nov  4 15:12:20 2024
-- Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OV5640_TFT_bram_0_1_sim_netlist.vhdl
-- Design      : OV5640_TFT_bram_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bram is
  port (
    web : out STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_n : in STD_LOGIC;
    write_state : in STD_LOGIC;
    clk_bram : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bram is
  signal \dinb[0]_i_1_n_0\ : STD_LOGIC;
begin
\dinb[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_n,
      I1 => write_state,
      O => \dinb[0]_i_1_n_0\
    );
\dinb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_bram,
      CE => '1',
      D => \dinb[0]_i_1_n_0\,
      Q => dinb(0),
      R => '0'
    );
\web_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_bram,
      CE => '1',
      D => rst_n,
      Q => web(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_bram : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_state : in STD_LOGIC;
    enb : out STD_LOGIC;
    dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    web : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "OV5640_TFT_bram_0_1,bram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bram,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dinb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^web\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addrb(31) <= \<const0>\;
  addrb(30) <= \<const0>\;
  addrb(29) <= \<const0>\;
  addrb(28) <= \<const0>\;
  addrb(27) <= \<const0>\;
  addrb(26) <= \<const0>\;
  addrb(25) <= \<const0>\;
  addrb(24) <= \<const0>\;
  addrb(23) <= \<const0>\;
  addrb(22) <= \<const0>\;
  addrb(21) <= \<const0>\;
  addrb(20) <= \<const0>\;
  addrb(19) <= \<const0>\;
  addrb(18) <= \<const0>\;
  addrb(17) <= \<const0>\;
  addrb(16) <= \<const0>\;
  addrb(15) <= \<const0>\;
  addrb(14) <= \<const0>\;
  addrb(13) <= \<const0>\;
  addrb(12) <= \<const0>\;
  addrb(11) <= \<const0>\;
  addrb(10) <= \<const0>\;
  addrb(9) <= \<const0>\;
  addrb(8) <= \<const0>\;
  addrb(7) <= \<const0>\;
  addrb(6) <= \<const0>\;
  addrb(5) <= \<const0>\;
  addrb(4) <= \<const0>\;
  addrb(3) <= \<const0>\;
  addrb(2) <= \<const0>\;
  addrb(1) <= \<const0>\;
  addrb(0) <= \<const0>\;
  dinb(31) <= \<const0>\;
  dinb(30) <= \<const0>\;
  dinb(29) <= \<const0>\;
  dinb(28) <= \<const0>\;
  dinb(27) <= \<const0>\;
  dinb(26) <= \<const0>\;
  dinb(25) <= \<const0>\;
  dinb(24) <= \<const0>\;
  dinb(23) <= \<const0>\;
  dinb(22) <= \<const0>\;
  dinb(21) <= \<const0>\;
  dinb(20) <= \<const0>\;
  dinb(19) <= \<const0>\;
  dinb(18) <= \<const0>\;
  dinb(17) <= \<const0>\;
  dinb(16) <= \<const0>\;
  dinb(15) <= \<const0>\;
  dinb(14) <= \<const0>\;
  dinb(13) <= \<const0>\;
  dinb(12) <= \<const0>\;
  dinb(11) <= \<const0>\;
  dinb(10) <= \<const0>\;
  dinb(9) <= \<const0>\;
  dinb(8) <= \<const0>\;
  dinb(7) <= \<const0>\;
  dinb(6) <= \<const0>\;
  dinb(5) <= \<const0>\;
  dinb(4) <= \<const0>\;
  dinb(3) <= \<const0>\;
  dinb(2) <= \<const0>\;
  dinb(1) <= \<const0>\;
  dinb(0) <= \^dinb\(0);
  enb <= \<const1>\;
  web(3) <= \<const0>\;
  web(2) <= \<const0>\;
  web(1) <= \<const0>\;
  web(0) <= \^web\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bram
     port map (
      clk_bram => clk_bram,
      dinb(0) => \^dinb\(0),
      rst_n => rst_n,
      web(0) => \^web\(0),
      write_state => write_state
    );
end STRUCTURE;
