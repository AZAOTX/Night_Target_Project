onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+c_shift_ram_0 -L xilinx_vip -L xil_defaultlib -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.c_shift_ram_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {c_shift_ram_0.udo}

run -all

endsim

quit -force
