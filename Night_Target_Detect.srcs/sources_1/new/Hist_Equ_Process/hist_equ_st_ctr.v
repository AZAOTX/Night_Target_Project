//Abstract   :直方图均衡化算法模块的数据流控制模块，产生sink_ready信号的使能ready_en
module hist_equ_st_ctr
(
	input 			   clk,
	input 			   rst_n,
	input              static_done,//直方图统计完成标志，高有效，一般持续一个clk周期
	input              cumulate_done,//直方图累计和RAM清空完成标志，高有效，一般持续一个clk周期
	output             ready_en
	);
reg ready_en_r;
assign ready_en = ready_en_r;
always@(posedge clk or negedge rst_n)
begin
if(rst_n == 1'b0)
    ready_en_r <= 1'b1;
else
    ready_en_r <= static_done?1'b0:(cumulate_done?1'b1:ready_en_r);
end
endmodule