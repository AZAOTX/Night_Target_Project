vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/processing_system7_vip_v1_0_6
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/v_tc_v6_1_13
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vlib modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/lib_fifo_v1_0_12
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/lib_bmg_v1_0_11
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_20
vlib modelsim_lib/msim/axi_vdma_v6_3_6
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_broadcaster_v1_1_17
vlib modelsim_lib/msim/blk_mem_gen_v8_3_6
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_0
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 modelsim_lib/msim/processing_system7_vip_v1_0_6
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 modelsim_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 modelsim_lib/msim/lib_fifo_v1_0_12
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap lib_bmg_v1_0_11 modelsim_lib/msim/lib_bmg_v1_0_11
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_20 modelsim_lib/msim/axi_datamover_v5_1_20
vmap axi_vdma_v6_3_6 modelsim_lib/msim/axi_vdma_v6_3_6
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_broadcaster_v1_1_17 modelsim_lib/msim/axis_broadcaster_v1_1_17
vmap blk_mem_gen_v8_3_6 modelsim_lib/msim/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 modelsim_lib/msim/axi_bram_ctrl_v4_1_0
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Vivado2018/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado2018/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado2018/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Vivado2018/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0/sim/OV5640_TFT_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_axi4s_vid_out_0_0/sim/OV5640_TFT_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_tc_0_0/sim/OV5640_TFT_v_tc_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_11 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_6 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_6 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_0_0/sim/OV5640_TFT_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_vid_in_axi4s_0_0/sim/OV5640_TFT_v_vid_in_axi4s_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/cc31/src/rgb2lcd.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_rgb2lcd_0_0/sim/OV5640_TFT_rgb2lcd_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ab26/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ab26/src/axi_dynclk_S00_AXI.vhd" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ab26/src/axi_dynclk.vhd" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_dynclk_0_0/sim/OV5640_TFT_axi_dynclk_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/sim/bd_c2f4.v" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_0/sim/bd_c2f4_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_1/sim/bd_c2f4_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_2/sim/bd_c2f4_arsw_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_3/sim/bd_c2f4_rsw_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_4/sim/bd_c2f4_awsw_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_5/sim/bd_c2f4_wsw_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_6/sim/bd_c2f4_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_7/sim/bd_c2f4_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_8/sim/bd_c2f4_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_9/sim/bd_c2f4_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_10/sim/bd_c2f4_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_11/sim/bd_c2f4_sarn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_12/sim/bd_c2f4_srn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_13/sim/bd_c2f4_s01mmu_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_14/sim/bd_c2f4_s01tr_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_15/sim/bd_c2f4_s01sic_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_16/sim/bd_c2f4_s01a2s_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_17/sim/bd_c2f4_sawn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_18/sim/bd_c2f4_swn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_19/sim/bd_c2f4_sbn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_20/sim/bd_c2f4_s02mmu_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_21/sim/bd_c2f4_s02tr_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_22/sim/bd_c2f4_s02sic_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_23/sim/bd_c2f4_s02a2s_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_24/sim/bd_c2f4_sarn_1.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_25/sim/bd_c2f4_srn_1.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_26/sim/bd_c2f4_s03mmu_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_27/sim/bd_c2f4_s03tr_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_28/sim/bd_c2f4_s03sic_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_29/sim/bd_c2f4_s03a2s_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_30/sim/bd_c2f4_sawn_1.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_31/sim/bd_c2f4_swn_1.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_32/sim/bd_c2f4_sbn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_33/sim/bd_c2f4_m00s2a_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_34/sim/bd_c2f4_m00arn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_35/sim/bd_c2f4_m00rn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_36/sim/bd_c2f4_m00awn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_37/sim/bd_c2f4_m00wn_0.sv" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_38/sim/bd_c2f4_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_39/sim/bd_c2f4_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/sim/OV5640_TFT_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_rst_ps7_0_100M_0/sim/OV5640_TFT_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_xbar_0/sim/OV5640_TFT_xbar_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/2b50/OV5640_Data.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_OV5640_Data_0_0/sim/OV5640_TFT_OV5640_Data_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_clk_wiz_0_0/OV5640_TFT_clk_wiz_0_0_clk_wiz.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_clk_wiz_0_0/OV5640_TFT_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_1_1/sim/OV5640_TFT_axi_vdma_1_1.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axis_broadcaster_0_0/hdl/tdata_OV5640_TFT_axis_broadcaster_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axis_broadcaster_0_0/hdl/tuser_OV5640_TFT_axis_broadcaster_0_0.v" \

vlog -work axis_broadcaster_v1_1_17 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/52f6/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axis_broadcaster_0_0/hdl/top_OV5640_TFT_axis_broadcaster_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axis_broadcaster_0_0/sim/OV5640_TFT_axis_broadcaster_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_AXI_Frame_Difference_0_0/sim/OV5640_TFT_AXI_Frame_Difference_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/sim/OV5640_TFT.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70ea/src/rgb888to565.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_rgb888to565_0_0/sim/OV5640_TFT_rgb888to565_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/f267/src/rgb565to888.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_rgb565to888_0_0/sim/OV5640_TFT_rgb565to888_0_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_bram_0_1/sim/OV5640_TFT_bram_0_1.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_blk_mem_gen_0_0/sim/OV5640_TFT_blk_mem_gen_0_0.v" \

vlog -work blk_mem_gen_v8_3_6 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_bram_ctrl_0_0/sim/OV5640_TFT_axi_bram_ctrl_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/ec67/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/70cf/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/58e2/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/979d/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/b2d0/hdl/verilog" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/85a3" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ipshared/8713/hdl" "+incdir+../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0" "+incdir+D:/Vivado2018/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_4/sim/OV5640_TFT_auto_pc_4.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_0/sim/OV5640_TFT_auto_pc_0.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_1/sim/OV5640_TFT_auto_pc_1.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_2/sim/OV5640_TFT_auto_pc_2.v" \
"../../../../OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_3/sim/OV5640_TFT_auto_pc_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

