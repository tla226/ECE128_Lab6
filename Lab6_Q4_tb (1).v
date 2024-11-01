`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 03:09:16 PM
// Design Name: 
// Module Name: Lab6_Q4_tb
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


module Lab6_Q4_tb;
reg clk_in;
wire clk_out;

Lab6_Q4 uut1(clk_in, clk_out);

initial begin
clk_in =0;

forever #10 clk_in = ~clk_in;
end

endmodule
