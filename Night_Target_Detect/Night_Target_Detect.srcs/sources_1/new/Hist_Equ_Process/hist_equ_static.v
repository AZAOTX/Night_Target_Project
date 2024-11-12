module hist_equ_static 
(
	input                     clk,
	input                     rst_n,
	input 			          receive_sop,
	input 			          receive_eop,
	input 			          receive_valid,
	input [7:0]               receive_data,
	output                    static_done,//标志一帧统计结束，持续一个时钟的高电平
	output [19:0]             static_ram_data,//720p
	output                    static_ram_write,
	output [7:0]              static_ram_wraddress,//0-255
	output                    static_ram_read,
	output [7:0]              static_ram_rdaddress,
	input  [19:0]             static_ram_q
	);
reg static_ram_read_r0;
reg [7:0]  receive_data_r0;
//修复同地址读写问题
reg [7:0]  static_ram_wraddress_r0;
reg        static_ram_write_r0;
reg [19:0] static_ram_data_r0;
assign static_done          = receive_eop && receive_valid;//标志统计结束
//assign static_ram_data      = static_ram_q+1'b1;
assign static_ram_data      = (static_ram_write_r0 && static_ram_read_r0 && 
                               receive_data_r0 == static_ram_wraddress_r0)?static_ram_data_r0+1'b1
										 :static_ram_q+1'b1;//修复同地址读写问题
assign static_ram_write     = static_ram_read_r0;//写始终发生在读的1个时钟之后
                                                 
assign static_ram_wraddress = receive_data_r0;//写地址始终是读地址延迟1个时钟
assign static_ram_read      = receive_valid;
assign static_ram_rdaddress = receive_data;
always@(posedge clk or negedge rst_n)
begin
if(rst_n == 1'b0)
    begin
	static_ram_read_r0  <= 1'b0;
	receive_data_r0        <= 'd0;
	//修复同地址读写问题
	static_ram_wraddress_r0 <= 8'd0;
	static_ram_write_r0 <= 1'b0;
	static_ram_data_r0 <= 'd0;
    end
else
    begin
	static_ram_read_r0 <= static_ram_read;
	receive_data_r0       <= receive_data;
	//修复同地址读写问题
	static_ram_wraddress_r0 <= static_ram_wraddress;
	static_ram_write_r0 <= static_ram_write;
	static_ram_data_r0 <= static_ram_data;
    end
end
endmodule