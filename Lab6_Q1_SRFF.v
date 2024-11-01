`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 01:21:54 PM
// Design Name: 
// Module Name: Lab6_Q1_SRFF
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


module Lab6_Q1_SRFF(
input clk,
input S,
input R,
output Q,
output Qbar
    );
    
wire nand1_out, nand2_out;

and (nand1_out, clk, S);
and (nand2_out, clk, R);
nor N1(Q, nand1_out, Qbar);
nor N2(Qbar, nand2_out, Q);
    
endmodule
