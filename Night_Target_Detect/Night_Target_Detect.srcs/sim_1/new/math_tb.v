`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/19 13:10:19
// Design Name: 
// Module Name: math_tb
// Project Name: 
// Target Devices: 
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


module math_tb;
localparam WIDTH = 1280 ;
localparam HEIGHT = 720 ;
reg clk,rst_n;
reg [27:0] mult_result_w;
reg [7:0] remap_data;
wire [55:0] temp;

hist_equ_div divider (
  .aclk(clk),                                      // input wire aclk
  .s_axis_divisor_tvalid(1'b1),    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata(WIDTH*HEIGHT),      // input wire [23 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(1'b1),  // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(mult_result_w),    // input wire [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(temp)            // output wire [55 : 0] m_axis_dout_tdata
);


always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
end
always @(posedge clk) begin
    remap_data = temp[31:24];
end

initial begin
    rst_n=1;
    mult_result_w=1280*720*2;
    #1000;
    mult_result_w=1000000;
    #1000;
    mult_result_w=10000;
    $finish;
end

endmodule
