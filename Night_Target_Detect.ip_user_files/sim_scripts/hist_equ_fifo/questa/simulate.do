onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib hist_equ_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {hist_equ_fifo.udo}

run -all

quit -force
