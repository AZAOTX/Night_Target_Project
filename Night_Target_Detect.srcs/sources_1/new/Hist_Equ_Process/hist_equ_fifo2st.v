module hist_equ_fifo2axis #(
parameter DWIDTH       = 8,
parameter TOTAL_PIXELS = 1280*720
)
(   
    input               clk,              //sop对应一帧的第一个有效数据,eop对应一帧的最后一个有效数据
    input               rst_n,
    input               fifo_aclr,        //外部模块需要根据视频流特征生成扇出FIFO的异步aclr信号
    input               fifo_empty,       //FIFO空标志信号
    input [DWIDTH-1:0]  fifo_q,
    output              fifo_rd,
    output              one_frame_done,
    output              send_sop,
    output              send_valid,
    output [DWIDTH-1:0] send_data,
    output              send_eop,
    output              send_tlast,
    input               send_ready
);

reg [31:0] pix_cnt;
reg        send_sop_r,send_valid_r,send_eop_r,send_tlast_r;
reg        one_frame_done_r;
assign one_frame_done = one_frame_done_r;
assign fifo_rd      = (~fifo_empty) && send_ready;
assign send_data  = fifo_q;
assign send_sop   = send_sop_r;
assign send_valid = send_valid_r;
assign send_eop   = send_eop_r;
assign send_tlast = send_tlast_r;
always@(posedge clk)
begin
if(!rst_n || fifo_aclr)
    begin
    send_sop_r     <= 1'b0;
    send_valid_r   <= 1'b0;
    send_eop_r     <= 1'b0;
	pix_cnt          <= 0;
	one_frame_done_r <= 1'b0;
    end
else
    begin
    send_valid_r <= fifo_rd;
    if(fifo_rd)
        begin
        pix_cnt <= (pix_cnt >= TOTAL_PIXELS-1)?0:pix_cnt+1;
        end
    else
        begin
        pix_cnt <= pix_cnt;
        end
    send_sop_r <= (pix_cnt == 0) && fifo_rd;
    send_eop_r <= (pix_cnt >= TOTAL_PIXELS-1) && fifo_rd;
    send_tlast_r <= (pix_cnt % 1280 == 1278) && fifo_rd; //模拟AXI4-Stream的tlast信号
	one_frame_done_r <= send_eop_r;
    end

end
endmodule 