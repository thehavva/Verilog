`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2022 10:26:19
// Design Name: 
// Module Name: replicate
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


module replicate(num1,num2,y4);
    input [7:0] num1;
    input [7:0] num2;
    wire [1:0] y1;
    wire [5:0] y2;
    wire [3:0] y3;
    output [1:0] y4;

    assign y1=num1[6:5];
    assign y2={3{y1}};
    assign y3=num2[3:0];
    assign y4=y2/y3;
endmodule
