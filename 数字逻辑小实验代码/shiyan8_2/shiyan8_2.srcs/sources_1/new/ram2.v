`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 23:36:22
// Design Name: 
// Module Name: ram2
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


module ram2(
    input clk,
    input wena,
    input [4:0] addr,
    inout [31:0] data,
    input ena
    );
    reg [31:0] mem [31:0]; // 32���洢λ��,ÿ��λ��32bit
         
            always @(posedge clk) begin
              if(ena)begin
                 if(wena)begin//д
                    mem[addr] <= data;
                 end
              end
            end
            //������
            assign data=(ena==1&&wena==0)?mem[addr]:32'bz;
endmodule
