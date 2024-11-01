`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 03:05:19 PM
// Design Name: 
// Module Name: Lab6_Q4
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

// clock divider
module Lab6_Q4(clk_in, clk_out);
input clk_in;
output reg clk_out = 1'b0;

reg[1:0] count = 2'd0;

always @(posedge clk_in) begin
count <= count+1;
if (count == 2'b01) begin
    clk_out = ~clk_out;
    
    count <=0;
    end
end
    
endmodule


module dff(
input d,
input clk,
output reg q);

initial begin
q = 0;
end

always @(posedge clk)
    q<=d;
endmodule

