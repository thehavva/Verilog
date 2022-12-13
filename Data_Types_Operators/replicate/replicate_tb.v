`timescale 1ns / 1ps

module replicate_tb;
    reg [7:0] x1;
    reg [7:0] x2;
    wire [1:0] y;
    
    replicate UUT(.num1(x1), .num2(x2), .y4(y));
    
    initial begin
    x1=8'b11011011;
    x2=8'b10101110;
    #100;
    end 
    
endmodule
