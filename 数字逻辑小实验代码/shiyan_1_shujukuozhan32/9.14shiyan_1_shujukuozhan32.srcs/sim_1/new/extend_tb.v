`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 23:47:30
// Design Name: 
// Module Name: extend_tb
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


module extend_tb;
    reg [15:0] a;
    reg sext; 
    wire [31:0] b;
    extend uut (.a(a),.sext(sext),.b(b)); 
    initial 
    begin
    a = 0; 
    sext = 0; 
    #100;
    sext = 1; 
    a = 16'h0000; 
    #100; 
    sext = 0; 
    a = 16'h8000; 
    #100; 
    sext = 1; 
    a = 16'h8000; 
    #100; 
    sext = 0; 
    a = 16'hffff; 
    #100; 
    sext = 1; 
    a = 16'hffff; 
    #100; 
    end 
    endmodule
