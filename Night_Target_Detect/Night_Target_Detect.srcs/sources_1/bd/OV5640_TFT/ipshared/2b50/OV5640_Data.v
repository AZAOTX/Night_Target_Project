module OV5640_Data(
	Rst_n,				//��λ
	PCLK,				//����ʱ��
	Vsync,				//��ͬ���ź�
	Href,				//��ͬ���ź�
	Data,				//����
	
	DataValid,			//������Ч�ź�
	DataPixel,			//��������
	
	Cam_Rst_n,  		//cmos ��λ�źţ��͵�ƽ��Ч
	Cam_Pwdn,			//��Դ����ģʽѡ��

	//RGB888�ӿ�
	Frame_Clk,		//ʱ���ź�
	Frame_Ce,		//ʱ��ʹ���ź�

	Frame_Vsync		//֡��Ч�ź�
);

	input Rst_n;			//��λ
	input PCLK;				//����ʱ��
	input Vsync;			//��ͬ���ź�
	input Href;				//��ͬ���ź�
	input [7:0]Data;		//����
	
	output DataValid;		//������Ч�ź�
	output [23:0]DataPixel;	//��������
	
	output Cam_Rst_n;//cmos ��λ�źţ��͵�ƽ��Ч
    output Cam_Pwdn;//��Դ����ģʽѡ��

    output Frame_Clk;//ʱ���ź�
    output Frame_Ce;//ʱ��ʹ���ź�

	output Frame_Vsync;//֡��Ч�ź�

	reg r_Vsync;			
	reg r_Href;
	reg [7:0]r_Data;
	
	reg [15:0]r_DataPixel;
	reg r_DataValid;
	reg [12:0]Hcount;
	reg [11:0]Vcount;
	reg [3:0]FrameCnt;
	
	reg Dump_Frame;
	
	assign DataPixel = Dump_Frame ? {r_DataPixel[15:11], 3'd0, r_DataPixel[10:5], 2'd0, r_DataPixel[4:0], 3'd0} : 24'd0;
	assign DataValid = r_Href & Dump_Frame;
	assign Frame_Vsync = r_Vsync & Dump_Frame;
	
	//����ͷӲ����λ,�̶��ߵ�ƽ
	assign  Cam_Rst_n = 1'b1;

	//��Դ����ģʽѡ�� 0������ģʽ 1����Դ����ģʽ
	assign  Cam_Pwdn  = 1'b0;
	
	//����ͷʱ��ʹ��
	assign  Frame_Ce = ((Hcount[0]) || (!r_Href)) & Dump_Frame;//1'b1;//(r_DataValid & Dump_Frame)||(!r_DataValid);
	//assign  Frame_Ce = ((!Hcount[0]) || (!r_Href)) & Dump_Frame;//1'b1;//(r_DataValid & Dump_Frame)||(!r_DataValid);
	
	//ʱ��Ϊ����ʱ��
	assign  Frame_Clk = PCLK;

	//����
	always@(posedge PCLK)
	begin
		r_Vsync <= Vsync;
		r_Href <= Href;
		r_Data <= Data;
	end
	
	//��ͬ���ź�Ϊ1ʱ���м�������һ����ͬ���ź�Ϊ0ʱ���㣩
	always@(posedge PCLK or negedge Rst_n)
	if(!Rst_n)
		Hcount <= 0;
	else if(r_Href)
		Hcount <= Hcount + 1'd1;
	else
		Hcount <= 0;

	//8λת16λ��������������
	always@(posedge PCLK or negedge Rst_n)
	if(!Rst_n)
		r_DataPixel <= 0;
	else if(!Hcount[0])
		r_DataPixel <= {r_Data,Data};
//	else 
//		r_DataPixel[7:0] <= r_Data;
	
	//����������Ч�ź�
	always@(posedge PCLK or negedge Rst_n)
	if(!Rst_n)
		r_DataValid <= 0;
	else if(Hcount[0] && r_Href)
		r_DataValid <= 1;
	else
		r_DataValid <= 0;
	
	//��ͬ���ź���0��Ϊ1ʱ���м�������һ����ͬ���ź�Ϊ1ʱ���㣩
	always@(posedge PCLK or negedge Rst_n)
	if(!Rst_n)
		Vcount <= 0;
	else if(r_Vsync)
		Vcount <= 0;
	else if({r_Href,Href} == 2'b01)
		Vcount <= Vcount + 1'd1;
	else
		Vcount <= Vcount;
	
	//��ͬ���ź���0��Ϊ1ʱ��֡������һ�����Ϊ10
	always@(posedge PCLK or negedge Rst_n)
	if(!Rst_n)	
		FrameCnt <= 0;
	else if({r_Vsync,Vsync}== 2'b01)begin
		if(FrameCnt >= 10)
			FrameCnt <= 4'd10;
		else
			FrameCnt <= FrameCnt + 1'd1;
	end
	else
		FrameCnt <= FrameCnt;
	
	//���������ڵ���10֡ʱ��Dump_Frame��Ϊ1������Ϊ0
	always@(posedge PCLK or negedge Rst_n)
	if(!Rst_n)
		Dump_Frame <= 0;
	else if(FrameCnt >= 10)
		Dump_Frame <= 1'd1;
	else
		Dump_Frame <= 0;

endmodule
