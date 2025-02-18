`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 16:34:40
// Design Name: 
// Module Name: barrelshifter32
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


module barrelshifter32(a,b,aluc,c);
    input [7:0] a;
    input [2:0] b;
    input [1:0] aluc;
    output reg [7:0] c;
    
     integer i; 
     reg [7:0] temp; 
     
    always@(*)begin
    case(aluc)
      2'b00:begin
                // �������ƣ��Ƚ���������ת��Ϊ�з�������Ȼ���������
                c = $signed(a) >>> b;
            end
      2'b01:c=a<<b; //��������
      2'b10:c=a>>b;//�߼�����
      2'b11:c=a<<b;//�߼�����
      endcase
   end     
endmodule
