`timescale 1ns / 1ps

module concatenation(num1,num2,out);
    input [7:0] num1;
    input [7:0] num2;
    output [5:0] out;
    wire [3:0] t1;
    wire [3:0] t2;
    wire [7:0] t3;
    wire [1:0] t4;
    wire [1:0] t5;
    parameter case1 = 2'b10;
    
    assign t1=num1[7:4];
    assign t2=num2[3:0];
    assign t3={t1,t2};
    assign t4=t3[5:4];
    assign t5=t4 & case1;
    assign out={3{t5}};
    
endmodule
