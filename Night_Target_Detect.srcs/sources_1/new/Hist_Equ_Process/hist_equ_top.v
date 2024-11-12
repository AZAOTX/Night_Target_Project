module hist_equ_top #(
parameter WIDTH  = 1280,
parameter HEIGHT = 720
)(
    input        clk,
	input        rst_n,
    input        proc_en,//算法打开，高有效
    
    //receive为接收端，需要输出接收准备信号，
    //send为发送端，需要输入发送准备信号
    input        receive_sop,
    input        receive_valid,
    input  [7:0] receive_data,
    input        receive_eop,

    output       receive_ready,
    output       send_sop,
    output       send_valid,
    output [7:0] send_data,
    output       send_eop,
    output       send_tlast,

    input        send_ready
);

//统计模块操作统计ram的接口
wire        static_ram_read_w,static_ram_write_w;
wire [19:0] static_ram_data_w,static_ram_q_w;
wire [7:0]  static_ram_wraddress_w,static_ram_rdaddress_w;
//累积模块操作统计ram的接口
wire        static_ram_read_w1,static_ram_write_w1;
wire [19:0] static_ram_data_w1,static_ram_q_w1;
wire [7:0]  static_ram_wraddress_w1,static_ram_rdaddress_w1;
//统计ram接口
wire        static_ram_read,static_ram_write;
wire [19:0] static_ram_data,static_ram_q;
wire [7:0]  static_ram_wraddress,static_ram_rdaddress;

wire        static_done_w,cumulate_done_w;
wire        static_done_w1;//static_done_w延迟一个时钟
wire        ready_en_w;
//fifo清空信号
wire fifo_aclr_w;
//scfifo接口
wire fifo_almost_full_w;
wire fifo_empty_w,fifo_rd_w;
wire [7:0] fifo_q_w;
wire [7:0] fifo_data_w;
//remap ram接口
wire [7:0] remap_ram_data_w,remap_ram_q_w;
wire [7:0] remap_ram_wraddress_w,remap_ram_rdaddress_w;
wire       remap_ram_write_w,remap_ram_read_w;
wire       remap_ram_q_valid_w;//remap_ram_q有效标志
//receive_data 延迟2个时钟
wire [7:0] receive_data_w;


//assign fifo_aclr_w = 1'b0;//receive_valid && receive_sop;
assign receive_ready = !(receive_valid && receive_eop) && !fifo_almost_full_w && ready_en_w;
assign fifo_data_w = proc_en ? remap_ram_q_w:receive_data_w;
//统计模块
hist_equ_static u_hist_equ_static_0 
(
	.clk(clk),
	.rst_n(rst_n),
	.receive_sop(receive_sop),
	.receive_eop(receive_eop),
	.receive_valid(receive_valid),
	.receive_data(receive_data),
	.static_done(static_done_w),//标志一帧统计结束，持续一个时钟的高电平
	.static_ram_data(static_ram_data_w),//20位适应720p
	.static_ram_write(static_ram_write_w),
	.static_ram_wraddress(static_ram_wraddress_w),//0-255
	.static_ram_read(static_ram_read_w),
	.static_ram_rdaddress(static_ram_rdaddress_w),
	.static_ram_q(static_ram_q_w)//统计输入端口接到统计ram的输出端口
	);	


//单口读和单口写，统计ram，用来统计所有像素点
hist_static_bram static_bram (
  .clka(clk),                       // input wire clka
  .wea(static_ram_write),           // input wire [0 : 0] wea
  .addra(static_ram_wraddress),     // input wire [7 : 0] addra
  .dina(static_ram_data),           // input wire [19 : 0] dina
  .clkb(clk),                      // input wire clkb
  .enb(static_ram_read),            // input wire enb
  .addrb(static_ram_rdaddress),     // input wire [7 : 0] addrb
  .doutb(static_ram_q)              // output wire [19 : 0] doutb
);


//累计模块（累计模块内部做了remap），生成灰度直方图
hist_equ_cumulate #(
    .WIDTH(WIDTH),
	.HEIGHT(HEIGHT)
)
u_hist_equ_cumulate_0
(
    .clk(clk),
    .rst_n(rst_n),
    .static_done(static_done_w),//统计完成标志 input
    .cumulate_done(cumulate_done_w),//累计完成标志 output
    .static_ram_data(static_ram_data_w1),
    .static_ram_write(static_ram_write_w1),
    .static_ram_wraddress(static_ram_wraddress_w1),
    .static_ram_read(static_ram_read_w1),
    .static_ram_rdaddress(static_ram_rdaddress_w1),
    .static_ram_q(static_ram_q_w1),
    .remap_data(remap_ram_data_w),
    .remap_wraddress(remap_ram_wraddress_w),
    .remap_write(remap_ram_write_w)
);
//视频流控制模块，累计完成时发出准备信号
hist_equ_st_ctr u_hist_equ_st_ctr_0
(
	.clk(clk),
	.rst_n(rst_n),
	.static_done(static_done_w),//直方图统计完成标志，高有效，一般持续一个clk周期
	.cumulate_done(cumulate_done_w),//直方图累计和RAM清空完成标志，高有效，一般持续一个clk周期
	.ready_en(ready_en_w)   //统计完成停止写
	);
//对延迟一个时钟
hist_equ_shift_regs#(
    .DWIDTH(1),//数据位宽
    .DELAY_DUTY(1)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_1
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(static_done_w),
    .odata(static_done_w1)
);
//统计RAM读写的仲裁模块
hist_equ_ram_bus_arbit
#(
    .DWIDTH(20),//RAM数据位宽
    .AWIDTH(8) //RAM地址位宽
)
u_hist_equ_ram_bus_arbit_0
(
	.clk(clk),
	.rst_n(rst_n),
	.state(!(ready_en_w || static_done_w1)),
    
    .static_data(static_ram_data_w),
    .static_write(static_ram_write_w),
    .static_wraddress(static_ram_wraddress_w),
    .static_read(static_ram_read_w),
    .static_rdaddress(static_ram_rdaddress_w),
    .static_q(static_ram_q_w),
    
    .cumulate_data(static_ram_data_w1),
    .cumulate_write(static_ram_write_w1),
    .cumulate_wraddress(static_ram_wraddress_w1),
    .cumulate_read(static_ram_read_w1),
    .cumulate_rdaddress(static_ram_rdaddress_w1),
    .cumulate_q(static_ram_q_w1),
    
    .ram_data(static_ram_data),
    .ram_write(static_ram_write),
    .ram_wraddress(static_ram_wraddress),
    .ram_read(static_ram_read),
    .ram_rdaddress(static_ram_rdaddress),
    .ram_q(static_ram_q)
	);
// 灰度映射模块,这个为输出数据
hist_equ_remap_bram u_hist_remap (
    .clka(clk),                       // input wire clka 
    .wea(remap_ram_write_w),          // input wire [0 : 0] wea 作为写使能
    .addra(remap_ram_wraddress_w),    // input wire [7 : 0] addra
    .dina(remap_ram_data_w),          // input wire [7 : 0] dina
    .clkb(clk),                       // input wire clkb
    .enb(receive_valid),                 // input wire enb 作为读使能
    .addrb(receive_data),                // input wire [7 : 0] addrb
    .doutb(remap_ram_q_w)             // output wire [7 : 0] doutb
);
//产生remap_ram_q_valid_w
hist_equ_shift_regs#(
    .DWIDTH(1),//数据位宽
    .DELAY_DUTY(2)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_0
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(receive_valid),
    .odata(remap_ram_q_valid_w)
);
//对receive_data延迟2个时钟
hist_equ_shift_regs#(
    .DWIDTH(8),//数据位宽
    .DELAY_DUTY(2)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_3
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(receive_data),
    .odata(receive_data_w)
);
//产生aclr信号
hist_equ_shift_regs#(
    .DWIDTH(1),//数据位宽
    .DELAY_DUTY(1)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_2
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(receive_valid && receive_sop),
    .odata(fifo_aclr_w)
);

// 同步缓存
hist_equ_fifo hist_scfifo (
  .clk(clk),                                 // input wire clk
  .rst(fifo_aclr_w),                           // input wire rst
  .din(fifo_data_w),                         // input wire [7 : 0] din
  .wr_en(remap_ram_q_valid_w),              // input wire wr_en
  .rd_en(fifo_rd_w),                        // input wire rd_en
  .dout(fifo_q_w),                           // output wire [7 : 0] dout
  .full(),                                   // output wire full
  .prog_full(fifo_almost_full_w),         // output wire almost_full       注
  .empty(fifo_empty_w),                      // output wire empty
  .wr_rst_busy(),                           // output wire wr_rst_busy
  .rd_rst_busy()                             // output wire rd_rst_busy
);




//FIFO缓存转AXI4视频流
hist_equ_fifo2axis #(
     .DWIDTH(8),
     .TOTAL_PIXELS(WIDTH*HEIGHT)
)
u_hist_equ_fifo2axis_0
(
     .clk(clk),              //sop对应一帧的第一个有效数据,eop对应一帧的最后一个有效数据
     .rst_n(rst_n),
     .fifo_aclr(fifo_aclr_w),        //外部模块需要根据视频流特征生成扇出FIFO的异步aclr信号
     .fifo_empty(fifo_empty_w),       //FIFO空标志信号
     .fifo_q(fifo_q_w),
     .fifo_rd(fifo_rd_w),
     .send_sop(send_sop),
     .send_valid(send_valid),
     .send_data(send_data),
     .send_eop(send_eop),
     .send_tlast(send_tlast),
     .send_ready(send_ready)
);
endmodule 