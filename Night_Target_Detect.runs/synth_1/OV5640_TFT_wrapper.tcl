# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param general.maxThreads 16
set_param synth.maxThreads 8
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.cache/wt [current_project]
set_property parent.project_path D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  d:/IP_Manage/IP/OV5640_Data
  d:/IP_Manage/IP/axi_dynclk_v1_0
  d:/IP_Manage/IP/rgb2lcd
  d:/IP_Manage/IP/rgb565to888
  d:/IP_Manage/IP/rgb888to565
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/hdl/OV5640_TFT_wrapper.v
add_files D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/OV5640_TFT.bd
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_processing_system7_0_0/OV5640_TFT_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_axi4s_vid_out_0_0/OV5640_TFT_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_tc_0_0/OV5640_TFT_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_tc_0_0/OV5640_TFT_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_0_0/OV5640_TFT_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_0_0/OV5640_TFT_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_0_0/OV5640_TFT_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_vid_in_axi4s_0_0/OV5640_TFT_v_vid_in_axi4s_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_v_vid_in_axi4s_0_0/OV5640_TFT_v_vid_in_axi4s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_1/bd_c2f4_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_1/bd_c2f4_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_2/bd_c2f4_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_3/bd_c2f4_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_4/bd_c2f4_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_5/bd_c2f4_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_6/bd_c2f4_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_10/bd_c2f4_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_11/bd_c2f4_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_12/bd_c2f4_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_16/bd_c2f4_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_17/bd_c2f4_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_18/bd_c2f4_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_19/bd_c2f4_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_23/bd_c2f4_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_24/bd_c2f4_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_25/bd_c2f4_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_29/bd_c2f4_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_30/bd_c2f4_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_31/bd_c2f4_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_32/bd_c2f4_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_33/bd_c2f4_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_34/bd_c2f4_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_35/bd_c2f4_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_36/bd_c2f4_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_37/bd_c2f4_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_smc_0/bd_0/ip/ip_38/bd_c2f4_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_rst_ps7_0_100M_0/OV5640_TFT_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_rst_ps7_0_100M_0/OV5640_TFT_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_clk_wiz_0_0/OV5640_TFT_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_clk_wiz_0_0/OV5640_TFT_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_clk_wiz_0_0/OV5640_TFT_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_1_1/OV5640_TFT_axi_vdma_1_1.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_1_1/OV5640_TFT_axi_vdma_1_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axi_vdma_1_1/OV5640_TFT_axi_vdma_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_axis_broadcaster_0_0/OV5640_TFT_axis_broadcaster_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_blk_mem_gen_0_0/OV5640_TFT_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_4/OV5640_TFT_auto_pc_4_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_0/OV5640_TFT_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_1/OV5640_TFT_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_2/OV5640_TFT_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/ip/OV5640_TFT_auto_pc_3/OV5640_TFT_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/VivadoProject/OV5640_TFT_Back/OV5640_TFT/OV5640_TFT.srcs/sources_1/bd/OV5640_TFT/OV5640_TFT_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/VivadoProject/Camera_Detect/Camera_Detect.srcs/constrs_1/new/system.xdc
set_property used_in_implementation false [get_files D:/VivadoProject/Camera_Detect/Camera_Detect.srcs/constrs_1/new/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top OV5640_TFT_wrapper -part xc7z020clg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef OV5640_TFT_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file OV5640_TFT_wrapper_utilization_synth.rpt -pb OV5640_TFT_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
