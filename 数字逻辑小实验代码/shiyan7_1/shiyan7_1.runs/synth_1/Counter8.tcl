# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_param simulator.modelsimInstallPath E:/modelsim_10.4c/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/shuziluojiwork/shiyan7_1/shiyan7_1.cache/wt [current_project]
set_property parent.project_path E:/shuziluojiwork/shiyan7_1/shiyan7_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib E:/shuziluojiwork/shiyan7_1/shiyan7_1.srcs/sources_1/new/Counter8.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/shuziluojiwork/shiyan7_1/shiyan7_1.srcs/constrs_1/new/111.xdc
set_property used_in_implementation false [get_files E:/shuziluojiwork/shiyan7_1/shiyan7_1.srcs/constrs_1/new/111.xdc]


synth_design -top Counter8 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef Counter8.dcp

catch { report_utilization -file Counter8_utilization_synth.rpt -pb Counter8_utilization_synth.pb }
