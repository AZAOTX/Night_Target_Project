//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Nov  9 11:44:27 2024
//Host        : LAPTOP-AD39T5K7 running 64-bit major release  (build 9200)
//Command     : generate_target OV5640_TFT_wrapper.bd
//Design      : OV5640_TFT_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OV5640_TFT_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    IIC_1_0_scl_io,
    IIC_1_0_sda_io,
    OV5640_SCCB_scl_io,
    OV5640_SCCB_sda_io,
    cam_data,
    cam_href,
    cam_pclk,
    cam_vsync,
    cam_xclk,
    key_press0,
    key_press1,
    lcd_0_bl,
    lcd_0_data,
    lcd_0_de,
    lcd_0_hs,
    lcd_0_pclk,
    lcd_0_vs);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout IIC_1_0_scl_io;
  inout IIC_1_0_sda_io;
  inout OV5640_SCCB_scl_io;
  inout OV5640_SCCB_sda_io;
  input [7:0]cam_data;
  input cam_href;
  input cam_pclk;
  input cam_vsync;
  output cam_xclk;
  input key_press0;
  input key_press1;
  output lcd_0_bl;
  output [15:0]lcd_0_data;
  output lcd_0_de;
  output lcd_0_hs;
  output lcd_0_pclk;
  output lcd_0_vs;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire IIC_1_0_scl_i;
  wire IIC_1_0_scl_io;
  wire IIC_1_0_scl_o;
  wire IIC_1_0_scl_t;
  wire IIC_1_0_sda_i;
  wire IIC_1_0_sda_io;
  wire IIC_1_0_sda_o;
  wire IIC_1_0_sda_t;
  wire OV5640_SCCB_scl_i;
  wire OV5640_SCCB_scl_io;
  wire OV5640_SCCB_scl_o;
  wire OV5640_SCCB_scl_t;
  wire OV5640_SCCB_sda_i;
  wire OV5640_SCCB_sda_io;
  wire OV5640_SCCB_sda_o;
  wire OV5640_SCCB_sda_t;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire cam_xclk;
  wire key_press0;
  wire key_press1;
  wire lcd_0_bl;
  wire [15:0]lcd_0_data;
  wire lcd_0_de;
  wire lcd_0_hs;
  wire lcd_0_pclk;
  wire lcd_0_vs;

  IOBUF IIC_1_0_scl_iobuf
       (.I(IIC_1_0_scl_o),
        .IO(IIC_1_0_scl_io),
        .O(IIC_1_0_scl_i),
        .T(IIC_1_0_scl_t));
  IOBUF IIC_1_0_sda_iobuf
       (.I(IIC_1_0_sda_o),
        .IO(IIC_1_0_sda_io),
        .O(IIC_1_0_sda_i),
        .T(IIC_1_0_sda_t));
  IOBUF OV5640_SCCB_scl_iobuf
       (.I(OV5640_SCCB_scl_o),
        .IO(OV5640_SCCB_scl_io),
        .O(OV5640_SCCB_scl_i),
        .T(OV5640_SCCB_scl_t));
  IOBUF OV5640_SCCB_sda_iobuf
       (.I(OV5640_SCCB_sda_o),
        .IO(OV5640_SCCB_sda_io),
        .O(OV5640_SCCB_sda_i),
        .T(OV5640_SCCB_sda_t));
  OV5640_TFT OV5640_TFT_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IIC_1_0_scl_i(IIC_1_0_scl_i),
        .IIC_1_0_scl_o(IIC_1_0_scl_o),
        .IIC_1_0_scl_t(IIC_1_0_scl_t),
        .IIC_1_0_sda_i(IIC_1_0_sda_i),
        .IIC_1_0_sda_o(IIC_1_0_sda_o),
        .IIC_1_0_sda_t(IIC_1_0_sda_t),
        .OV5640_SCCB_scl_i(OV5640_SCCB_scl_i),
        .OV5640_SCCB_scl_o(OV5640_SCCB_scl_o),
        .OV5640_SCCB_scl_t(OV5640_SCCB_scl_t),
        .OV5640_SCCB_sda_i(OV5640_SCCB_sda_i),
        .OV5640_SCCB_sda_o(OV5640_SCCB_sda_o),
        .OV5640_SCCB_sda_t(OV5640_SCCB_sda_t),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .key_press0(key_press0),
        .key_press1(key_press1),
        .lcd_0_bl(lcd_0_bl),
        .lcd_0_data(lcd_0_data),
        .lcd_0_de(lcd_0_de),
        .lcd_0_hs(lcd_0_hs),
        .lcd_0_pclk(lcd_0_pclk),
        .lcd_0_vs(lcd_0_vs));
endmodule
