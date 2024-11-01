`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 01:33:04 PM
// Design Name: 
// Module Name: Lab6_Q2_DFF
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

// Asynch DFF
module Lab6_Q2_DFF_Asynch(
input d,
input rstn,
input clk,
output reg q
    );
    
always @(posedge clk or negedge rstn) 
    if (!rstn) begin
        q<=0;
        end
    else
        q<=d;
endmodule


