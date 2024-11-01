`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 02:24:51 PM
// Design Name: 
// Module Name: Lab6_Q3_tb
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


module Lab6_Q3_tb;
reg clk;
wire Q0;
wire Q1;
wire Q2;

counter uut1(clk,Q0,Q1,Q2);

initial begin
clk =0;
forever #10 clk = ~clk;
end

endmodule
