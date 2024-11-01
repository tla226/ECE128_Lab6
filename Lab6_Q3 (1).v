`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 02:03:28 PM
// Design Name: 
// Module Name: Lab6_Q3
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

module counter(
input clk,
output Q0,
output Q1,
output Q2
);

wire tt1;
wire tt2;

tff num_1(.clk(clk), .t(1'b1), .q(Q0));
assign tt1 = Q0;
tff num_2(.clk(clk), .t(tt1), .q(Q1));
assign tt2 = Q1&Q0;
tff num_3(.clk(clk), .t(tt2), .q(Q2));

endmodule


module tff(
input clk,
//input rstn,
input t,
output reg q
);

initial begin
q = 0;
end

always @(posedge clk) begin 
if (t)
    q<=~q;
end

endmodule









/*
if (!rstn) 
    q<=0;
else
    if(t)
        q <= ~q;
    else
        q<=q;
end
*/

