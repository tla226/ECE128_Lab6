`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 01:41:25 PM
// Design Name: 
// Module Name: Lab6_Q2_DFF_tb
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


module Lab6_Q2_DFF_Asynch_tb;
reg clk;
reg d;
reg rstn;
reg [2:0] delay;
wire q;
integer i;

Lab6_Q2_DFF_Asynch uut1(d,rstn,clk, q);

always #10 clk = ~clk;

initial begin
    clk <= 0;
    d <= 0;
    rstn <= 0;
    
    #15 d <=1;
    #10 rstn <=1;
    
    #20 rstn <=0;
    
    for (i=0; i<5; i=i+1) begin
        delay = $random;
        #(delay) d<=i;
   end
end
        

endmodule
