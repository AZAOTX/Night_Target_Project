onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib hist_equ_remap_bram_opt

do {wave.do}

view wave
view structure
view signals

do {hist_equ_remap_bram.udo}

run -all

quit -force
