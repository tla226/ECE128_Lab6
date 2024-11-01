`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 01:12:27 PM
// Design Name: 
// Module Name: Lab6_Q1_SR_tb
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


module Lab6_Q1_SR_tb();
reg s, r;
wire q, qbar;

Lab6_Q1_SR uut1(s, r, q, qbar);

initial
    begin
    r=0; s=0;
    #10 s=1;
    #10 s=0;
    #10 r=1;
    #10 r=0; s=1;
    #10 s=0; r=1;
    #10 r=0;
    #10 r=1; s=1;
end

endmodule
