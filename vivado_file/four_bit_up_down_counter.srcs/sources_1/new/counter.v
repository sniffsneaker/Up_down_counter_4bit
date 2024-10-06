`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 16:18:18
// Design Name: 
// Module Name: counter
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


module counter (
    input clk,               // Clock signal
    input reset,             // Reset signal (active high)
    input up_down,           // Control signal: 1 for up-count, 0 for down-count
    output reg [3:0] count   // 4-bit counter output
);

// Always block triggered by the clock or reset
always @(posedge clk or posedge reset) begin
    if (reset)              // On reset, set the count to 0
        count <= 4'b0000;
    else if (up_down)       // If up_down is high, increment count
        count <= count + 1;
    else                    // If up_down is low, decrement count
        count <= count - 1;
end

endmodule

