module hist_equ_mult (
	clock,
	data_A,
	result);

	input	  clock;
	input	[19:0]  data_A;
	output  [27:0]  result;

	wire [7:0] sub_wire0 = 8'hff;
	multiplier myMultiplier (
		.CLK(clock),  // input wire CLK
		.A(data_A),      // input wire [19 : 0] A
		.B(sub_wire0),      // input wire [7 : 0] B
		.P(result)      // output wire [27 : 0] P
	);


endmodule

