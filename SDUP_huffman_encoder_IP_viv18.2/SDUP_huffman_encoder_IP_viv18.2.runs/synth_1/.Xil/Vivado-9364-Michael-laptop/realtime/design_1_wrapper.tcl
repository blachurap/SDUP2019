# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7z020clg484-1
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    {c:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog}
    {c:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog}
    {c:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl}
  } {
      C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include {
    {c:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog}
    {c:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog}
    {c:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl}
  } {
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_processing_system7_0_0_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_rst_ps7_0_100M_0_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_axi_dma_0_1_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_xlconcat_0_0_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_axi_smc_1_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_huffman_myip_0_2_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/realtime/design_1_auto_pc_0_stub.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v}
      {C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.srcs/sources_1/bd/design_1/synth/design_1.v}
    }
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top design_1_wrapper
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "C:/Users/Micha�/Desktop/Studia - II stopnia/SDUP/Projekt/SDUP2019/SDUP_huffman_encoder_IP_viv18.2/SDUP_huffman_encoder_IP_viv18.2.runs/synth_1/.Xil/Vivado-9364-Michael-laptop/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}