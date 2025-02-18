######################################################################
#
# File name : logic_gates_tb_simulate.do
# Created on: Sun Sep 15 00:37:11 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.logic_gates_tb xil_defaultlib.glbl

do {logic_gates_tb_wave.do}

view wave
view structure
view signals

do {logic_gates_tb.udo}

run 1000ns
