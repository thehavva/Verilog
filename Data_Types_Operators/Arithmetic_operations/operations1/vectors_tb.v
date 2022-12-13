`timescale 1ns / 1ps

module vectors_tb;
    reg [3:0] int1;
    reg [3:0] int2;
    reg [2:0]  int3;
    reg [7:0]  x1;
    wire [4:0] res1;
    wire [4:0] res2;
    wire [3:0] res3;
    wire [2:0] res4;
    wire [7:0] var1;
    wire [7:0] var2;
    wire [7:0] var3;
    
    vectors UUT(.in1(int1), .in2(int2), .in3(int3),.x(x1), .out1(res1), .out2(res2), .out3(res3), .out4(res4),.y1(var1), .y2(var2), .y3(var3));
    
    initial begin
    int1=4'b1010;
    int2=4'b1111;
    int3=3'b010;
    x1=8'h4F;
    #100;
    end
endmodule
