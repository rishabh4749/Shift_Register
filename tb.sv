`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2024 12:18:50
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk,resetn,in; wire out;
    des dut(.clk(clk),.resetn(resetn),.in(in),.out(out));
    always #5 clk=~clk;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("time=%t resetn=%b in=%b out=%b",$time,resetn,in,out);
    clk<=0;
    resetn<=0;
    in<=1;
    #50 $finish;
    end
endmodule
