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
set_property webtalk.parent_dir E:/shuziluojiwork/1014shiyan_4/1014shiyan_4.cache/wt [current_project]
set_property parent.project_path E:/shuziluojiwork/1014shiyan_4/1014shiyan_4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib E:/shuziluojiwork/1014shiyan_4/1014shiyan_4.srcs/sources_1/new/barrelshifter32.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/shuziluojiwork/1014shiyan_4/1014shiyan_4.srcs/constrs_1/new/01.xdc
set_property used_in_implementation false [get_files E:/shuziluojiwork/1014shiyan_4/1014shiyan_4.srcs/constrs_1/new/01.xdc]


synth_design -top barrelshifter32 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef barrelshifter32.dcp

catch { report_utilization -file barrelshifter32_utilization_synth.rpt -pb barrelshifter32_utilization_synth.pb }
