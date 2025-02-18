`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 20:05:10
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


module tb;
    reg [31:0] a;  
    reg [4:0] b;  
    reg [1:0] aluc;  
    wire [31:0] c;  
  
    // ʵ���������Ե�ģ��  
    barrelshifter32 uut (  
        .a(a),  
        .b(b),  
        .aluc(aluc),  
        .c(c)  
    );  
  
    
    initial begin  
        // ��ʼ�������ź�  
        a = 0;  
        b = 0;  
        aluc = 0;  
   
        #10;// ������������  
        a = 32'b1000_0000_0000_0000_0000_0000_0000_0001; 
        b = 5'b01;  
        aluc = 2'b00;  
        #10; 
        
        // ������������  
        a = 32'b1000_0000_0000_0000_0000_0000_0000_0001;  
        b = 5'b01;  
        aluc = 2'b01;  
        #10;   
  
        // �����߼�����  
        a = 32'b1000_0000_0000_0000_0000_0000_0000_0001; 
        b = 5'b01;  
        aluc = 2'b10;  
        #10;  
  
        // �����߼�����  
        a = 32'b1000_0000_0000_0000_0000_0000_0000_0001; 
        b = 5'b01;  
        aluc = 2'b11;  
        #10;  
        
    end  
endmodule
