######################################################################
#
# File name : JK_FF_tb_simulate.do
# Created on: Mon Oct 28 19:43:44 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.JK_FF_tb xil_defaultlib.glbl

do {JK_FF_tb_wave.do}

view wave
view structure
view signals

do {JK_FF_tb.udo}

run 1000ns
