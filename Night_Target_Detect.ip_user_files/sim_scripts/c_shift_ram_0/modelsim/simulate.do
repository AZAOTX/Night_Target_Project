onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.c_shift_ram_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {c_shift_ram_0.udo}

run -all

quit -force
