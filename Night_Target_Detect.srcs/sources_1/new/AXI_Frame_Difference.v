//////////////////////////////////////////////////////////////////////////////////
// Company: 超自然研究部β分部
// Engineer: 
// UTF-8编码
// Create Date: 2024/10/02 10:13:06
// Design Name: 改进版帧差法模块
// Module Name: AXI_Frame_Difference
// Project Name: 夜间动态监测系统
// Target Devices: ZYNQ7020
// Tool Versions: Vivado 2018.3
// Description: None
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//AXI4-Stream接口的帧差法，包含灰度化、直方图均衡处理，由PL端按键控制是否显示处理后的图像

module AXI_Frame_Difference(
    input 				clk				,
    input 				rst_n			,
	input				key_press0		,
	input				key_press1		,
    
    //AXI_ST Slave 接口0，来自摄像头 ov5640
    input [23:0] 		s0_axis_tdata   ,
    input        		s0_axis_tvalid  ,
    output       		s0_axis_tready  ,
    input        		s0_axis_tuser   ,
    input        		s0_axis_tlast   ,
    
    //AXI_ST Slave 接口1，来自VDMA 1
    input [23:0] 		s1_axis_tdata   ,
    input        		s1_axis_tvalid  ,
    output       		s1_axis_tready  ,
    input        		s1_axis_tuser   ,
    input        		s1_axis_tlast   ,
	
	//AXI_ST Master 接口，输出给VDMA 0 , 用来将框选目标后的图片缓存后进入DDR3
    output reg [23:0] 	m_axis_tdata	,
    output reg        	m_axis_tvalid	,
    input             	m_axis_tready	,
    output reg        	m_axis_tuser	,
    output reg        	m_axis_tlast 	,
	output reg			diff_flag
    );

wire				key_press0_flag, key_press1_flag;		
reg  		[7:0]	Diff_Threshold;	//帧差阈值
localparam	[10:0]	IMG_HDISP 		= 1280;	//图像分辨率
localparam	[10:0]	IMG_VDISP 		= 720;	//

// 异常信号输出，连接bram，使信号传递给PS端
always @(posedge clk) begin
	if(boarder_flag)
		diff_flag <= 1'b1;
	else if(s0_axis_tuser)
		diff_flag <= 1'b0;
end




//*****************************************************
wire key1_state;
//按键控制阈值
key_filter key_add(
	.clk(clk),
	.reset_n(rst_n),
	.key_in(key_press0),
	.key_flag(key_press0_flag),
	.key_state()
);
key_filter key_process(
	.clk(clk),
	.reset_n(rst_n),
	.key_in(key_press1),
	.key_flag(key_press1_flag),
	.key_state(key1_state)
);


reg [1:0] pressed_flag; //存储按下的记录
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		Diff_Threshold <= 8'd120; 
		pressed_flag <= 1'b0;
		process_flag <= 1'b0;
	end
	// 提高帧差法阈值	
	else if(key_press0_flag && Diff_Threshold < 8'd255)
		Diff_Threshold <= Diff_Threshold + 8'd2; //两次触发，加4
	else if(key_press1_flag && pressed_flag <= 2'd1)
		pressed_flag <= pressed_flag + 1'b1;
	//松手触发
	else if(pressed_flag == 2'd2)begin
		pressed_flag <= 2'd0;
		process_flag <= ~process_flag;
	end
end


//*****************************************************
//将VDMA1的图像缓存到FIFO中，使缓存图像与当前图像同步

reg   [23:0]	fifo_data;
reg           	fifo_wr	 ;
reg 			fifo_wr_en;	
wire          	fifo_full;
    
reg          	fifo_rd   ;
reg          	fifo_rd_en;
wire [23:0]   	fifo_q    ;
reg          	fifo_valid;
wire          	fifo_empty;

//FIFO不满时，持续从VDMA1读取数据
assign s1_axis_tready = ~fifo_full;

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		fifo_wr_en	<= 1'b0;
        fifo_wr 	<= 1'b0;
		fifo_data	<= 24'd0;
	end
    else begin
		//检测到SOF后才打开写FIFO使能，保证FIFO中写入的第一个数据为SOF
		if(s1_axis_tvalid & s1_axis_tready & s1_axis_tuser) 
			fifo_wr_en	<= 1'b1;
	
		if(s1_axis_tvalid & s1_axis_tready) begin
			fifo_wr 	<= 1'b1;
			fifo_data	<= s1_axis_tdata; 
		end  
		else  begin
			fifo_wr 	<= 1'b0;
			fifo_data	<= fifo_data;
		end
	end
end

//缓存来自VDMA1的AXI ST 视频
video_fifo u_video_fifo (
  .clk                      (clk),         
  .srst                     (~rst_n),      
                
  .din                      (fifo_data),
  .wr_en                    (fifo_wr & fifo_wr_en),  
  .full                     (),
                
  .rd_en                    (fifo_rd & fifo_rd_en),  
  .dout                     (fifo_q),   
  .empty                    (fifo_empty),
  
  .almost_full              (fifo_full),
  .almost_empty             () 
);

//*****************************************************
//摄像头输入像素的同时，从FIFO中读出VDMA1像素，以进行帧差运算

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		fifo_rd_en	<= 1'b0;
        fifo_rd 	<= 1'b0;
	end
    else begin
		//等待FIFO中缓存一定量的数据之后，检测摄像头输入SOF后才打开读FIFO使能
		if(s0_axis_tvalid & s0_axis_tready & s0_axis_tuser & fifo_full) 
			fifo_rd_en	<= 1'b1;
		
		//此处FIFO读信号相对于摄像头输入视频延迟了一个时钟周期
		if(s0_axis_tvalid & s0_axis_tready) 
			fifo_rd 	<= 1'b1;
 		else 
			fifo_rd 	<= 1'b0;
	end
end

//FIFO输出的数据有效标志，相对于摄像头输入视频延迟了两个时钟周期
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		fifo_valid	<= 1'b0;
	end
    else begin
		fifo_valid 	<= fifo_rd;		//used
	end
end

//*****************************************************消耗两个时钟周期，以同步数据

//与FIFO中读出的数据同步，将摄像头输入视频数据和有效信号延迟两个时钟周期 
reg [23:0]	s0_axis_tdata_dly1;
reg [23:0]	s0_axis_tdata_dly2;
reg tvalid_dly1,tvalid_dly2;
reg tuser_dly1, tuser_dly2,tuser_dly3,tuser_dly4,tuser_dly5;
reg tlast_dly1, tlast_dly2,tlast_dly3,tlast_dly4,tlast_dly5;
	
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        s0_axis_tdata_dly1 <=  24'd0;
        s0_axis_tdata_dly2 <=  24'd0;

	end
    else begin
        s0_axis_tdata_dly1 <=  s0_axis_tdata;
        s0_axis_tdata_dly2 <=  s0_axis_tdata_dly1;

	end
end	

//*****************************************************消耗三个时钟周期
//将RGB格式的像素数据转成灰度图像，

wire [7:0]	s0_img_gray;	//来自摄像头
wire [7:0]	s1_img_gray;	//来自VDMA
wire 		gray0_valid;
wire 		gray1_valid;

//灰度处理后要同步延迟3个周期
RGB888_YCbCr444 S0_RGB888_YCbCr444 (
	.clk				(clk	),  				
	.rst_n				(rst_n	),				
	.in_img_red			(s0_axis_tdata_dly2[23:16]),		
	.in_img_green		(s0_axis_tdata_dly2[15: 8]),		
	.in_img_blue		(s0_axis_tdata_dly2[ 7: 0]),		

	.out_img_Y			(s0_img_gray),			
	.out_img_Cb			(),		
	.out_img_Cr			()
    			
);

RGB888_YCbCr444 S1_RGB888_YCbCr444 (
	.clk				(clk	),  				
	.rst_n				(rst_n	),				

	.in_img_red			(fifo_q[23:16]),		
	.in_img_green		(fifo_q[15: 8]),		
	.in_img_blue		(fifo_q[ 7: 0]),		

	.out_img_Y			(s1_img_gray),			
	.out_img_Cb			(),		
	.out_img_Cr			()		
);




//*****************************************************无法计算时钟周期,进行直方图均衡处理提高对比度
//直方图均衡化视频流协议，这里s表示直方图均衡化处理后发送的信号，但是接到master接口
wire [7:0] s0_hist_tdata, s1_hist_tdata;//输出直方图均衡化数据
wire s0_hist_tuser, s0_hist_tlast;		//输出转每帧起始和每行结束信号
wire s1_hist_tuser, s1_hist_tlast;
wire s0_hist_tvalid, s1_hist_tvalid;
wire s0_hist_ready, s1_hist_ready;
wire in_hist_tvalid,in_hist_sop,in_hist_tlast;

//用来获取一帧的开始和最后一个像素的标志，用以直方图均衡化统计
wire sop,eop;						    //输入转每帧起始信号和结束信号
reg [9:0] eop_count;

assign in_hist_tvalid = s0_axis_tvalid_reg[4];
assign in_hist_sop = s0_axis_tuser_reg[4];
assign in_hist_tlast = s0_axis_tlast_reg[4];

assign sop = in_hist_sop;
assign eop = (eop_count == IMG_VDISP);

always @(posedge clk or negedge rst_n) begin
	if(!rst_n || sop)begin
		eop_count <= 10'd0;
	end
	else if(in_hist_tlast)begin
		if (eop_count < IMG_VDISP) begin
            eop_count <= eop_count + 1'b1;
        end
	end
end


// 来自相机灰度化
hist_equ_top #(.WIDTH(IMG_HDISP),.HEIGHT(IMG_VDISP))hist_equ_process_s0(
    .clk(clk),
    .rst_n(rst_n),
    .proc_en(1'b1),

    .receive_valid(in_hist_tvalid),
    .receive_sop(sop),
    .receive_eop(eop),
    .receive_data(s0_img_gray),
    .send_ready(m_axis_tready), //input,从vdma输入准备信号时当相机准备也可以准备了
    
    .send_sop(s0_hist_tuser),
    .send_tlast(s0_hist_tlast),
    .send_data(s0_hist_tdata),
    .send_valid(s0_hist_tvalid),
    .receive_ready(s0_hist_ready) //output
);
// 来自VDMA1灰度化
hist_equ_top #(.WIDTH(IMG_HDISP),.HEIGHT(IMG_VDISP))hist_equ_process_s1(
    .clk(clk),
    .rst_n(rst_n),
    .proc_en(1'b1),

    .receive_valid(in_hist_tvalid),
    .receive_sop(sop),
    .receive_eop(eop),
    .receive_data(s1_img_gray),
    .send_ready(~fifo), //input,从VDMA1缓存fifo不满时信号时准备,因为此时相机才准备

    .send_sop(s1_hist_tuser),
    .send_tlast(s1_hist_tlast),
    .send_data(s1_hist_tdata),
    .send_valid(s1_hist_tvalid),
    .receive_ready(s1_hist_ready)  //output
    
);
//*****************************************************消耗一个时钟周期
//帧差运算 

//帧差标志位，为1表示两帧数据差别超过阈值 
reg frame_difference_flag;	

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
		frame_difference_flag	<= 1'b0;
	end
    else begin
		if(s0_hist_tdata > s1_hist_tdata) begin
			if(s0_hist_tdata - s1_hist_tdata > Diff_Threshold)	//灰度差大于阈值
				frame_difference_flag <= 1'b1; 
			else
				frame_difference_flag <= 1'b0;	 
		end
		else begin
			if(s1_hist_tdata - s0_hist_tdata > Diff_Threshold)	//灰度差大于阈值
				frame_difference_flag <= 1'b1; 
			else
				frame_difference_flag <= 1'b0;
		end
	end
end

//*****************************************************延迟6个时钟周期
//将摄像头输入的同步信号延迟6个时钟周期或对均衡化后数据延迟1个时钟周期，与帧差后数据同步

wire 		s0_axis_tuser_dly;
wire 		s0_axis_tlast_dly;
wire 		s0_axis_tvalid_dly;

reg 		s0_hist_tuser_dly;
reg 		s0_hist_tlast_dly;	
reg 		s0_hist_tvalid_dly;		

reg  [5:0] 	s0_axis_tuser_reg;
reg  [5:0] 	s0_axis_tlast_reg;
reg  [5:0] 	s0_axis_tvalid_reg;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        s0_axis_tuser_reg  <= 6'd0;
        s0_axis_tlast_reg  <= 6'd0;
        s0_axis_tvalid_reg <= 6'd0;

		s0_hist_tuser_dly <= 1'b0;
		s0_hist_tlast_dly <= 1'b0;
		s0_hist_tvalid_dly <= 1'b0;
    end
    else begin
        s0_axis_tuser_reg  <= {s0_axis_tuser_reg[4:0], s0_axis_tvalid & s0_axis_tready & s0_axis_tuser}; 
        s0_axis_tlast_reg  <= {s0_axis_tlast_reg[4:0], s0_axis_tvalid & s0_axis_tready & s0_axis_tlast}; 
        s0_axis_tvalid_reg <= {s0_axis_tvalid_reg[4:0],s0_axis_tvalid & s0_axis_tready }; 
		s0_hist_tuser_dly <= s0_hist_tuser;
		s0_hist_tlast_dly <= s0_hist_tlast;
		s0_hist_tvalid_dly <= s0_hist_tvalid;
	end
end

assign s0_axis_tuser_dly  = s0_axis_tuser_reg[5];
assign s0_axis_tlast_dly  = s0_axis_tlast_reg[5];
assign s0_axis_tvalid_dly = s0_axis_tvalid_reg[5];

//*****************************************************
//是否均衡化,灰度化显示标志，由按键控制
reg process_flag;
wire s0_tvalid, s0_tuser, s0_tlast;
// assign process_flag = 1'b1;
assign s0_tvalid = process_flag ? s0_hist_tvalid_dly : s0_axis_tvalid_dly;
assign s0_tuser = process_flag ? s0_hist_tuser_dly : s0_axis_tuser_dly;
assign s0_tlast = process_flag ? s0_hist_tlast_dly : s0_axis_tlast_dly;

//计算帧差后的像素坐标
reg [10:0] x_cnt;    
reg [10:0] y_cnt;    

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        x_cnt <= 11'd0;
        y_cnt <= 11'd0;
    end
    else if(s0_tvalid) begin
        if(s0_tlast) begin
             x_cnt <= 11'd0;   
             y_cnt <= y_cnt + 1'b1;   
        end
        else if(s0_tuser) begin
            x_cnt <= 11'd0;       
            y_cnt <= 11'd0;
        end
        else begin
            x_cnt <= x_cnt + 1'b1;       
        end
    end  
end

//*****************************************************
//运动目标的最大矩形边框

reg [10:0] 	up_reg		;	  
reg [10:0] 	down_reg	;
reg [10:0] 	left_reg	;
reg [10:0] 	right_reg	;
reg			flag_reg	;

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		up_reg	  <= IMG_VDISP;
		down_reg  <= 11'd0;
		left_reg  <= IMG_HDISP;
		right_reg <= 11'd0;
		flag_reg  <= 1'b0;
	end
	else if(s0_tuser)begin     //一帧开始时复位，
		up_reg	  <= IMG_VDISP;
		down_reg  <= 11'd0;
		left_reg  <= IMG_HDISP;
		right_reg <= 11'd0;
		flag_reg  <= 1'b0;
	end
	else if(s0_tvalid & frame_difference_flag) begin
		flag_reg  <= 1'b1;
		
		if(x_cnt < left_reg) 
			left_reg <= x_cnt;		//左边界
		else
			left_reg <= left_reg;
			
		if(x_cnt > right_reg) 
			right_reg <= x_cnt;		//右边界
		else
			right_reg <= right_reg;
			
		if(y_cnt < up_reg) 
			up_reg <= y_cnt;		//上边界
		else
			up_reg <= up_reg;
			
		if(y_cnt > down_reg) 
			down_reg <= y_cnt;		//下边界
		else
			down_reg <= down_reg;	
	end
end

reg [10:0] 	rectangular_up	 ;
reg [10:0] 	rectangular_down ;
reg [10:0] 	rectangular_left ;
reg [10:0] 	rectangular_right;
reg			rectangular_flag ;

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		rectangular_up	  <= 11'd0;
		rectangular_down  <= 11'd0;
		rectangular_left  <= 11'd0;
		rectangular_right <= 11'd0;
		rectangular_flag  <= 1'b0;
	end
	else if((x_cnt == IMG_HDISP - 1) && (y_cnt == IMG_VDISP - 1))begin
		rectangular_up	  <= up_reg	;		
		rectangular_down  <= down_reg ;
		rectangular_left  <= left_reg ;		
		rectangular_right <= right_reg;
		rectangular_flag  <= flag_reg ;
	end
end

//*****************************************************
//绘制矩形框

//计算摄像头输入图像的像素坐标
reg [10:0] s0_x_cnt;    
reg [10:0] s0_y_cnt;    

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        s0_x_cnt <= 11'd0;
        s0_y_cnt <= 11'd0;
    end
    else if(s0_axis_tvalid) begin
        if(s0_axis_tlast) begin
             s0_x_cnt <= 11'd0;   
             s0_y_cnt <= y_cnt + 1'b1;   
        end
        else if(s0_axis_tuser) begin
            s0_x_cnt <= 11'd0;       
            s0_y_cnt <= 11'd0;
        end
        else begin
            s0_x_cnt <= s0_x_cnt + 1'b1;       
        end
    end  
end

reg boarder_flag;	//标志着像素点位于方框上

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		boarder_flag <= 1'd0;			
	end
	else begin		
		if(rectangular_flag)begin	//检测到运动目标
			if((s0_x_cnt >  rectangular_left) && (s0_x_cnt < rectangular_right)
					&& ((s0_y_cnt == rectangular_up) ||(s0_y_cnt == rectangular_down)) ) begin //绘制上下边界
				boarder_flag <= 1'd1;	
			end
			else if((s0_y_cnt > rectangular_up) && (s0_y_cnt < rectangular_down)
					&& ((s0_x_cnt == rectangular_left) ||(s0_x_cnt == rectangular_right)) ) begin //绘制左右边界
				boarder_flag <= 1'd1;
			end
			else begin
				boarder_flag <= 1'd0;
			end
		end
		else begin	
			boarder_flag <= 1'd0;
		end
	end
end


//输出给摄像头输入的Ready信号
wire [23:0] data_hist;
assign s0_axis_tready = m_axis_tready;
assign data_hist = {s0_hist_tdata, s0_hist_tdata , s0_hist_tdata};
//给AXI ST Master接口赋值
always @ (posedge clk or negedge rst_n ) begin
	if(!rst_n) begin
		m_axis_tvalid   <= 1'd0;
        m_axis_tuser    <= 1'd0;
        m_axis_tlast    <= 1'd0;
        m_axis_tdata    <= 24'd0;
	end
    else begin
		m_axis_tvalid  <= (process_flag ? s0_hist_tvalid : s0_axis_tvalid);
		m_axis_tuser   <= (process_flag ? s0_hist_tuser : s0_axis_tuser);
		m_axis_tlast   <= (process_flag ? s0_hist_tlast : s0_axis_tlast);
		// 绘制方框
		m_axis_tdata   <= boarder_flag ? 24'h00_ec_ff : (process_flag ? data_hist : s0_axis_tdata);
    end
end

endmodule