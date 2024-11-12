onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib OV5640_TFT_opt

do {wave.do}

view wave
view structure
view signals

do {OV5640_TFT.udo}

run -all

quit -force
