`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 01:10:40 PM
// Design Name: 
// Module Name: Lab6_Q1_SR
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


module Lab6_Q1_SR(
input S,
input R,
output Q,
output Qbar 
    );
    nor N1(Q,R,Qbar);
    nor N2(Qbar, S, Q);
    
endmodule
