`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 23:28:31
// Design Name: 
// Module Name: de_selector14
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


module de_selector14(
    input iC,
    input iS1,
    input iS0,
    output reg oZ0,
    output reg oZ1,
    output reg oZ2,
    output reg oZ3
    );
    always @(*) begin  
        // Ĭ��������������Ϊ1  
        oZ0 = 1;  
        oZ1 = 1;  
        oZ2 = 1;  
        oZ3 = 1;  
      
        // ����ѡ���źŷ����������ݵ���Ӧ�����  
        case ({iS1, iS0}) // ��iS1��iS0��ϳ�һ��2λ�ĵ�ַ  
            2'b00: oZ0 = iC; // ��ѡ���ź�Ϊ00ʱ����iC���䵽oZ0  
            2'b01: oZ1 = iC; // ��ѡ���ź�Ϊ01ʱ����iC���䵽oZ1  
            2'b10: oZ2 = iC; // ��ѡ���ź�Ϊ10ʱ����iC���䵽oZ2  
            2'b11: oZ3 = iC; // ��ѡ���ź�Ϊ11ʱ����iC���䵽oZ3  
        endcase  
    end  
endmodule
