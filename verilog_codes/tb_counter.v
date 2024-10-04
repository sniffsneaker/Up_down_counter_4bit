`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 16:21:06
// Design Name: 
// Module Name: tb_counter
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


module tb_counter;

// Declare testbench variables
reg clk;
reg reset;
reg up_down;
wire [3:0] count;

// Instantiate the counter module
counter uut (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// Clock generation: 50 MHz clock (20 ns period)
always #10 clk = ~clk;

initial begin
    // Initialize signals
    clk = 0;
    reset = 1;
    up_down = 1;

    // Apply reset
    #20 reset = 0;

    // Count up for 8 clock cycles
    #160 up_down = 0;

    // Count down for 8 clock cycles
    #160 $finish;
end

endmodule

