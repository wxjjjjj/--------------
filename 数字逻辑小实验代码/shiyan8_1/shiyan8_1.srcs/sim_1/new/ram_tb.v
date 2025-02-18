`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 23:22:38
// Design Name: 
// Module Name: ram_tb
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


module ram_tb;
    reg clk;
    reg ena;
    reg wena;
    reg [4:0] addr;
    reg [31:0] data_in;
    
    wire [31:0] data_out;
    
    ram uut (
        .clk(clk),
        .ena(ena),
        .wena(wena),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns ����
    end

    initial begin
        ena = 0;
        wena = 0;
        addr = 0;
        data_in = 0;
        #10; 
        // д����
        ena = 1;
        wena = 1;
        addr = 5'b00000; // ��ַ 0
        data_in = 32'h12345678; // д������
        #10; 
        data_in=32'h00000000;
        // ������
        ena = 1;
        wena = 0;
        addr = 5'b00000; // ��ȡ��ַ 0
        #10;
        // д����
        ena = 1;
        wena = 1;
        addr = 5'b00100; // ��ַ 0
        data_in = 32'h66666666; // д������
        #10;
        
        wena = 0; // ֹͣд����
        #5;
        // ������
        ena = 1;
        wena = 0;
        addr = 5'b00000; // ��ȡ��ַ 0
        #5; 
        // ������
        ena = 1;
        wena = 0;
        addr = 5'b00100; // ��ȡ��ַ 0
        #10;
        ena=0;
     
    end
endmodule
