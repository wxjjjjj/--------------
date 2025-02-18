`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/04 16:51:07
// Design Name: 
// Module Name: Counter8_tb
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


module Counter8_tb;
    reg CLK;  
    reg rst_n;  
    wire [2:0] oQ;  
    wire [6:0] oDisplay;  
  
    Counter8 uut (  
        .CLK(CLK),  
        .rst_n(rst_n),  
        .oQ(oQ),  
        .oDisplay(oDisplay)  
    );  
  
    initial begin  
        CLK = 0;  
        forever #5 CLK = ~CLK; // 10ns ʱ������  
    end  
  
   
    initial begin  
        // ��ʼ���ź�  
        rst_n = 0;  
        #20; // �ȴ���λ�ź���Ч  
        rst_n = 1; // �ͷŸ�λ�ź�  
   
  
        // ����һ��ʱ���Թ۲����������Ϊ  
        #200;  
        
        #20;
        rst_n=0;     //�����첽��λ
        #10;
        rst_n=1;
        
        #200;
        
    end  
  
endmodule
