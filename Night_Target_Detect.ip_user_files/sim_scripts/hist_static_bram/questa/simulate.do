onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib hist_static_bram_opt

do {wave.do}

view wave
view structure
view signals

do {hist_static_bram.udo}

run -all

quit -force
