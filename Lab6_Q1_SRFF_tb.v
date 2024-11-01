`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 01:26:32 PM
// Design Name: 
// Module Name: Lab6_Q1_SRFF_tb
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


module Lab6_Q1_SRFF_tb;
reg clk, S, R;
wire Q, Qbar;

Lab6_Q1_SRFF uut1(clk, S, R, Q, Qbar);

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
S=1; R=0;
#100 S=0; R=1;
#100 S=0; R=0;
#100; S=1; R=1;
end    
endmodule
