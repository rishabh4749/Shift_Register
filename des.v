`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2024 12:18:18
// Design Name: 
// Module Name: des
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

module des(input in,clk,resetn,output reg out);
reg A,B,C;
always @ (posedge clk) begin
if(resetn) begin
out=0;A=0;B=0;C=0;
end
else begin
out<=C;
C<=B;
B<=A;
A<=in;
end
end
endmodule
