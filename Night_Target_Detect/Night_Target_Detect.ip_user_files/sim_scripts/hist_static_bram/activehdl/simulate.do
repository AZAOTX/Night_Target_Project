onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+hist_static_bram -L xilinx_vip -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.hist_static_bram xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {hist_static_bram.udo}

run -all

endsim

quit -force
