######################################################################
#
# File name : extend_tb_simulate.do
# Created on: Sun Sep 15 00:33:57 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.extend_tb xil_defaultlib.glbl

do {extend_tb_wave.do}

view wave
view structure
view signals

do {extend_tb.udo}

run 1000ns
