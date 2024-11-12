//Abstract   :RAM读写总线的判决模块,统计模块和累积模块都需要操作统计ram，因此需要时分复用
module hist_equ_ram_bus_arbit
#(
parameter DWIDTH = 20,//RAM数据位宽
parameter AWIDTH = 8 //RAM地址位宽
)
(
	input                clk,
	input                rst_n,
	input 			     state,
    //static
    input [DWIDTH-1:0]   static_data,
    input                static_write,
    input [AWIDTH-1:0]   static_wraddress,
    input                static_read,
    input [AWIDTH-1:0]   static_rdaddress,
    output [DWIDTH-1:0]  static_q,
    //add
    input [DWIDTH-1:0]   cumulate_data,
    input                cumulate_write,
    input [AWIDTH-1:0]   cumulate_wraddress,
    input                cumulate_read,
    input [AWIDTH-1:0]   cumulate_rdaddress,
    output  [DWIDTH-1:0] cumulate_q,
    //RAM
    output [DWIDTH-1:0]  ram_data,
    output               ram_write,
    output [AWIDTH-1:0]  ram_wraddress,
    output               ram_read,
    output [AWIDTH-1:0]  ram_rdaddress,
    input  [DWIDTH-1:0]  ram_q
	);
    
assign static_q      = ram_q;      
assign cumulate_q    = ram_q;
assign ram_data      = state ? cumulate_data      : static_data;
assign ram_write     = state ? cumulate_write     : static_write;
assign ram_wraddress = state ? cumulate_wraddress : static_wraddress;
assign ram_read      = state ? cumulate_read      : static_read;
assign ram_rdaddress = state ? cumulate_rdaddress : static_rdaddress;

endmodule