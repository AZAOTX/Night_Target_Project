//Abstract   :直方图均衡化算法模块的直方图累计模块
module hist_equ_cumulate
(
    input                     clk,
    input                     rst_n,
    input                     static_done,//统计完成标志
    output                    cumulate_done,//累计完成标志
    output [19:0]             static_ram_data,
    output                    static_ram_write,
    output [7:0]              static_ram_wraddress,
    output                    static_ram_read,
    output [7:0]              static_ram_rdaddress,
    input  [19:0]             static_ram_q,
    output [7:0]              remap_data,
    output [7:0]              remap_wraddress,
    output                    remap_write
);

parameter WIDTH  = 1280;
parameter HEIGHT = 720;
localparam IDLE_S = 2'b00;
localparam CUMU_S = 2'b01;
reg [1:0]  state_c,state_n;
reg [19:0] static_num_r0;
reg [8:0]  static_ram_read_cnt;//对从static ram中读出的数据进行计数
reg [7:0]  static_ram_wraddress_r;
reg        static_ram_read_r,static_ram_write_r;
reg        static_ram_read_r0;//对static_ram_read_r延迟1个时钟的寄存器
reg        static_ram_readvalid_r0,static_ram_readvalid_r1;
reg        cumulate_done_r;
reg        cumulate_ram_write_r;
wire [27:0] mult_result_w;
wire        cumulate_ram_write;//累计RAM写使能
wire [7:0]  cumulate_ram_wraddress;//累计RAM写地址
wire [19:0] cumulate_ram_data;//累计RAM写数据

assign static_ram_read        = static_ram_read_r;
assign static_ram_data        = 'd0;
assign static_ram_write       = static_ram_write_r;
assign static_ram_rdaddress   = static_ram_read_cnt;
assign static_ram_wraddress   = static_ram_wraddress_r;
assign cumulate_ram_data      = static_num_r0;
assign cumulate_ram_write     = cumulate_ram_write_r;

//三段式状态机第一段
always@(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)
        state_c <= IDLE_S;
    else
        state_c <= state_n;
end
//三段式状态机第二段
always@(*)begin
    case(state_c)
        IDLE_S:state_n = static_done?CUMU_S:IDLE_S;
        CUMU_S:state_n = cumulate_done?IDLE_S:CUMU_S;
        default:state_n = IDLE_S;
    endcase
end
//三段式状态机第三段:产生static ram的读写时序
always@(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        static_ram_read_r      <= 1'b0;
        static_ram_read_cnt    <= 'd0;
        static_ram_write_r     <= 1'b0;
        static_ram_wraddress_r <= 'd0;
    end
    else begin
        case(state_c)
        IDLE_S:begin
            static_ram_read_r      <= 1'b0;
            static_ram_read_cnt    <= 'd0;
            static_ram_write_r     <= 1'b0;
            static_ram_wraddress_r <= 'd0;
        end
        CUMU_S:begin
            static_ram_read_r      <= static_ram_read_cnt < 9'd255;
            static_ram_read_cnt    <= static_ram_read_r?static_ram_read_cnt+1'b1:static_ram_read_cnt;
            static_ram_write_r     <= static_ram_read_r;//读完后就可以清空static RAM
            static_ram_wraddress_r <= static_ram_rdaddress;
        end
        default:;
        endcase
    end
end
always@(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        static_num_r0           <= 'd0;
        static_ram_readvalid_r0 <= 1'b0;
        cumulate_done_r         <= 1'b0;
        cumulate_ram_write_r    <= 1'b0;
    end
    else begin
        case(state_c)
        IDLE_S:begin
            static_num_r0           <= 'd0;
            static_ram_readvalid_r0 <= 1'b0;
            cumulate_done_r         <= 1'b0;
            cumulate_ram_write_r    <= 1'b0;
        end
        CUMU_S:begin
            static_ram_readvalid_r0 <= static_ram_read_r;//对static_ram_read_r打一拍得到和static_ram_q对齐的数据有效标志信号
            static_num_r0           <= static_ram_readvalid_r0?static_num_r0+static_ram_q[19:0]:static_num_r0;//各灰度级的统计值累加
            cumulate_ram_write_r    <= static_ram_readvalid_r0;
            cumulate_done_r         <= (cumulate_ram_wraddress == 8'd255 && cumulate_ram_write);//写最后一个cumulate ram地址
        end
        default:;
        endcase
    end
end
//对static ram的读地址延迟2个时钟得到cumulate ram的写地址
hist_equ_shift_regs#(
    .DWIDTH(8),//数据位宽
    .DELAY_DUTY(2)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_0
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(static_ram_rdaddress),
    .odata(cumulate_ram_wraddress)
);
//生成remap数据并写入remap ram
//将本应写入cumulate ram的数据，经过运算生成remap数据并写入remap ram
//公式：remap_data = cumulate_data*255/(WIDTH*HEIGHT)
hist_equ_mult u_hist_equ_mult_0 //乘法消耗4个clk
(
    .clock(clk),
    .data_A(cumulate_ram_data),
    .result(mult_result_w)
);
//除法使用Divider消耗4个clk
wire [55:0] temp; //临时存储，因为分频器得到的低8位为小数
assign remap_data = temp[31:24];
hist_equ_div divider (
  .aclk(clk),                                      // input wire aclk
  .s_axis_divisor_tvalid(1'b1),    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(WIDTH*HEIGHT),      // input wire [23 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(1'b1),  // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(mult_result_w),    // input wire [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(temp)            // output wire [55 : 0] m_axis_dout_tdata
);


//对cumulate_ram_wraddress延迟8个clk得到remap_wraddress
hist_equ_shift_regs#(
    .DWIDTH(8),//数据位宽
    .DELAY_DUTY(8)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_1
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(cumulate_ram_wraddress),
    .odata(remap_wraddress)
);
//对cumulate_ram_write_r延迟8个clk得到remap_write
hist_equ_shift_regs#(
    .DWIDTH(1),//数据位宽
    .DELAY_DUTY(8)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_2
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(cumulate_ram_write),
    .odata(remap_write)
);
//cumulate_done_r延迟8个clk得到cumulate_done
hist_equ_shift_regs#(
    .DWIDTH(1),//数据位宽
    .DELAY_DUTY(8)//延迟的时钟周期数，最小是1
)u_hist_equ_shift_regs_3
(
    .clk(clk),
    .rst_n(rst_n),
    .idata(cumulate_done_r),
    .odata(cumulate_done)
);
endmodule