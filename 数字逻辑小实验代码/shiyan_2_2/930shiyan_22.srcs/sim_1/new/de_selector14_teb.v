`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 23:39:22
// Design Name: 
// Module Name: de_selector14_teb
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


module de_selector14_teb;  
  
// ���������źŵ�����  
    reg iC;  
    reg iS1;  
    reg iS0;  
    wire oZ0;  
    wire oZ1;  
    wire oZ2;  
    wire oZ3;  
  
// ʵ�������ݷ�����ģ��  
    de_selector14 
    uut (.iC(iC),.iS1(iS1),.iS0(iS0),.oZ0(oZ0),.oZ1(oZ1),.oZ2(oZ2),.oZ3(oZ3));  
  
// ��ʼ���飬�������ò�������  
initial begin  
    // ��ʼ�������ź�  
    iC = 0;  
    iS1 = 0;  
    iS0 = 0;  
    // ��������  
    // ���� iC = 0 ʱ�����  
    #10
    iC = 0; iS1 = 0; iS0 = 0;
    #10   
    iC = 0; iS1 = 0; iS0 = 1;
    #10  
    iC = 0; iS1 = 1; iS0 = 0;
    #10
    iC = 0; iS1 = 1; iS0 = 1;

    end  
 
endmodule
