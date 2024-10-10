`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 01:43:37 PM
// Design Name: 
// Module Name: lab5_tb
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


module lab5_tb();

reg clk;
reg[15:0] i0;
wire [3:0] sseg_a;
wire [6:0] sseg_c;

lab5 uut1(clk, i0, sseg_a, sseg_c);

always
begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
end

initial begin   
    i0 = 16'b0001001000110100;
    #1280;
    
    i0 = 16'b0101011001111000;
    #1280;
    
    i0 = 16'b1001000100000010;
    #1280;
    $stop;
end
endmodule