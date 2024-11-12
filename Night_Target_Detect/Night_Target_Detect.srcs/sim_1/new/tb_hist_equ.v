`timescale 1ns / 1ps

module tb_hist_equ;

parameter WIDTH  = 800;
parameter HEIGHT = 480;

reg clk;
reg rst_n;
reg proc_en;

reg sink_sop;
reg sink_valid;
reg [7:0] sink_data;
reg sink_eop;

wire sink_ready;
wire source_sop;
wire source_valid;
wire [7:0] source_data;
wire source_eop;

reg source_ready;

hist_equ_top #(
    .WIDTH(WIDTH),
    .HEIGHT(HEIGHT)
) uut (
    .clk(clk),
    .rst_n(rst_n),
    .proc_en(proc_en),
    .sink_sop(sink_sop),
    .sink_valid(sink_valid),
    .sink_data(sink_data),
    .sink_eop(sink_eop),
    .sink_ready(sink_ready),
    .source_sop(source_sop),
    .source_valid(source_valid),
    .source_data(source_data),
    .source_eop(source_eop),
    .source_ready(source_ready)
);

// Clock generation for 100MHz
always begin
    clk = 0; #5; clk = 1; #5; // 每个周期10ns
end

integer i;
// Test stimulus
initial begin
    // Initialize signals
    rst_n = 0;
    proc_en = 0;
    sink_sop = 0;
    sink_valid = 0;
    sink_data = 0;
    sink_eop = 0;
    source_ready = 0;

    // Release reset
    #10 rst_n = 1;

    // Start processing
    #10 proc_en = 1;
    source_ready = 1;
    
    sink_valid = 1;
    // Provide test data
    for (i = 0; i < 384000; i=i+1) begin
        if(i==0)
            sink_sop = 1'b1;
        else
            sink_sop = 1'b0;
        if(i==383999)
            sink_eop = 1'b1;
        else
            sink_eop = 1'b0;
        sink_data = i; // Example data
        
        #10; // Wait for a clock cycle
    end
sink_eop = 1'b0;
    // Provide test data
    for (i = 0; i < 384000; i=i+1) begin
        if(i==0)
            sink_sop = 1'b1;
        else
            sink_sop = 1'b0;
        if(i==383999)
            sink_eop = 1'b1;
        else
            sink_eop = 1'b0;
        sink_data = i; // Example data
        
        #10; // Wait for a clock cycle
    end
sink_eop = 1'b0;
#1000
    // End of data
    sink_valid = 0;

    // Wait for some time to observe outputs
    #100;

    // Finish simulation
    $finish;
end

endmodule


