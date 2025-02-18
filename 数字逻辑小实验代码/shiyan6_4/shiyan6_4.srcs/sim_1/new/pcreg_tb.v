`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 20:51:29
// Design Name: 
// Module Name: pcreg_tb
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


module pcreg_tb;
    reg clk;  
    reg rst;  
    reg ena;  
    reg [31:0] data_in;  
      
    wire [31:0] data_out;  
       
    pcreg uut (  
        .clk(clk),  
        .rst(rst),  
        .ena(ena),  
        .data_in(data_in),  
        .data_out(data_out)  
    );  
       
    initial begin  
        clk = 0;  
        forever #5 clk = ~clk; // 10ns ʱ������  
    end  
      
    initial begin
        
        rst = 0;   //�ߵ�ƽ����
        ena = 0;  
        data_in = 0;  
            
        #10;  
          
        rst = 0;  
           
        #20;  
          
        ena = 1;  
        data_in = 32'h12345678;   
        #10;
        ena=0;   //ena��Ч������ԭ�����
        #10  
         
        data_in = 32'hAABBCCDD;  
        #10;  
            
        rst=1; //��֤ena��ЧҲ������  
     
    end  
endmodule
