`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 02:00:39 PM
// Design Name: 
// Module Name: Lab6_Q2_DFF_Asynch
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


// SYNCHRONOUS
module Lab6_Q2_DFF_synch(
input d,
input rstn,
input clk,
output reg q    
    );
    
always @(posedge clk)
    if (!rstn)
        q<=0;
    else
        q<=d;
endmodule


