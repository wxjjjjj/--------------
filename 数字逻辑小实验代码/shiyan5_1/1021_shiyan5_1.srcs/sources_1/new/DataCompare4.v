`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:53:09
// Design Name: 
// Module Name: DataCompare4
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


module DataCompare4(
    input [3:0] iData_a,
    input [3:0] iData_b,
    input [2:0] iData,
    output reg [2:0] oData
    );
    
     always @(*) begin  
           if (iData_a[3] > iData_b[3]||(iData_a[3] ==iData_b[3]&&iData_a[2] > iData_b[2])||(iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] > iData_b[1])||(iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] == iData_b[1]&&iData_a[0] > iData_b[0])||(iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] == iData_b[1]&&iData_a[0] == iData_b[0]&&iData[2]==1&&iData[1]==0&&iData[0]==0))  
               oData = 3'b100;  
           else if(iData_a[3] < iData_b[3]||(iData_a[3] ==iData_b[3]&&iData_a[2] <iData_b[2])||(iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] < iData_b[1])||(iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] == iData_b[1]&&iData_a[0] < iData_b[0])||(iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] == iData_b[1]&&iData_a[0] == iData_b[0]&&iData[2]==0&&iData[1]==1&&iData[0]==0))
               oData = 3'b010;  
           else if((iData_a[3] ==iData_b[3]&&iData_a[2] == iData_b[2]&&iData_a[1] == iData_b[1]&&iData_a[0] == iData_b[0]&&iData[2]==0&&iData[1]==0&&iData[0]==1))
               oData = 3'b001; 
           else  
               oData= 3'b000;  
       end  
     
endmodule
