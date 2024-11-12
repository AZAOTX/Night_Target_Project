`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 超自然研究部β分部
// Engineer: 
// UTF-8编码
// Create Date: 2024/10/13 12:59:57
// Design Name: bram
// Module Name: bram
// Project Name: 
// Target Devices: PS bram Access PL
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bram(
        input             clk_bram,
        input             rst_n,
		output     reg    [31:0]addrb,
		input          [31:0]doutb,		
		input           write_state,
		output          enb,
		output     reg [31:0]dinb ,
		output     reg [3:0] web
    );
    wire enb;		
 
	reg [31:0]addrbWrite;//write address		
	//PL璇籖AM
	wire [0:0] read_state;	//read single
	reg  [31:0]addrbRead;	//read addr
	//Ohter signals
	assign  enb = 1'b1;
/**************			  **************/		
/**************    PL write to BRAM    **************/		
/**************			  **************/			

	
	always@(posedge clk_bram)begin
		if(!rst_n)begin
			web[3:0]   <= 4'd0;
			dinb[31:0] <= 32'd0;
			addrb <= 32'd0;
		end
		else begin
			case(write_state)
			1'b0:
				begin
					addrb[31:0]  <= 32'd0;
					web[3:0]          <= 4'd1;
					dinb[31:0]   	  <= 32'd0;
				end			
			1'b1:
				begin
					web[3:0]     		<= 4'd1;
					addrb[31:0]  	<= 32'd0;
					dinb[31:0]   		<= 32'd1;   //
				end
			endcase
		end		
	end


endmodule