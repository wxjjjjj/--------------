# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath E:/modelsim_10.4c/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/shuziluojiwork/shiyan8_2/shiyan8_2.cache/wt [current_project]
set_property parent.project_path E:/shuziluojiwork/shiyan8_2/shiyan8_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib E:/shuziluojiwork/shiyan8_2/shiyan8_2.srcs/sources_1/new/ram2.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top ram2 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef ram2.dcp

catch { report_utilization -file ram2_utilization_synth.rpt -pb ram2_utilization_synth.pb }
