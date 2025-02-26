# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath E:/modelsim_10.4c/win32pe
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/shuziluojiwork/shiyan9/shiyan9.cache/wt [current_project]
set_property parent.project_path E:/shuziluojiwork/shiyan9/shiyan9.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib E:/shuziluojiwork/shiyan9/shiyan9.srcs/sources_1/new/alu.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top alu -part xc7a100tcsg324-1


write_checkpoint -force -noxdef alu.dcp

catch { report_utilization -file alu_utilization_synth.rpt -pb alu_utilization_synth.pb }
