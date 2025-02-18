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
set_property webtalk.parent_dir E:/shuziluojiwork/9.14shiyan_1/9.14shiyan_1.cache/wt [current_project]
set_property parent.project_path E:/shuziluojiwork/9.14shiyan_1/9.14shiyan_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib E:/shuziluojiwork/9.14shiyan_1/9.14shiyan_1.srcs/sources_1/new/logic_gates_1.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/shuziluojiwork/9.14shiyan_1/9.14shiyan_1.srcs/constrs_1/new/logic_gates1.xdc
set_property used_in_implementation false [get_files E:/shuziluojiwork/9.14shiyan_1/9.14shiyan_1.srcs/constrs_1/new/logic_gates1.xdc]


synth_design -top logic_gates_1 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef logic_gates_1.dcp

catch { report_utilization -file logic_gates_1_utilization_synth.rpt -pb logic_gates_1_utilization_synth.pb }
