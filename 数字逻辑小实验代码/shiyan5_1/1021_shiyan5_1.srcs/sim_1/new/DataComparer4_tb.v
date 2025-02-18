`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 16:12:54
// Design Name: 
// Module Name: DataComparer4_tb
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


module DataCompare4_tb;  

    reg [3:0] iData_a;  
    reg [3:0] iData_b;  
    reg [2:0] iData;  
    wire [2:0] oData;  
  
    DataCompare4 uut (  
        .iData_a(iData_a),  
        .iData_b(iData_b),  
        .iData(iData),  
        .oData(oData)  
    );  
  
    initial begin  
        // ����1: iData_a ���� iData_b 
        iData_a = 4'b0101; iData_b = 4'b0011; iData = 3'b000;
         #10;  
        // ����2: iData_a С�� iData_b  
        iData_a = 4'b0011; iData_b = 4'b0101; iData = 3'b000;
         #10;  
        // ����3: iData_a ���� iData_b  
        iData_a = 4'b0101; iData_b = 4'b0101; iData = 3'b100;
         #10;  
        // ����4: ʹ��iData���������������������ʾĳ����������µ���ȣ�  
        iData_a = 4'b0101; iData_b = 4'b0101; iData = 3'b010;
         #10;  
        // ����5: ��һ��iData���������������������ʾĳ����������µ�iData_aС��iData_b��  
        iData_a = 4'b0101; iData_b = 4'b0101; iData = 3'b001;
         #10;  
  
    end  
  
endmodule
