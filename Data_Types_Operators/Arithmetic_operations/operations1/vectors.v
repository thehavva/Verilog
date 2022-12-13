`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2022 15:44:21
// Design Name: 
// Module Name: vectors
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


module vectors(in1,in2,in3,x,out1,out2,out3,out4,y1,y2,y3);
    input [3:0] in1;
    input [3:0] in2;
    input [2:0] in3;
    input [7:0] x;
    output [4:0] out1;
    output [4:0] out2;
    output [3:0] out3;
    output [2:0] out4;
    output [7:0] y1;
    output [7:0] y2;
    output [7:0] y3;
    
    parameter count=3'b110;
    
    assign out1=in1+in2;
    assign out2=in2-in1;
    assign out3=count+in3;
    assign out4=count-in3;
    assign y1=x/2;
    assign y2= y1+x;
    assign y3=y2+(x*x);
endmodule
