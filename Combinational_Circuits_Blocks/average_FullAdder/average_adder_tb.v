`timescale 1ns / 1ps

module full_adder_2_tb;
    reg [2:0] x,y;
    wire [3:0] num,average;
    average_adder UUT(.x(x), .y(y), .number(num), .average(average));
    initial begin
    x=3'b111;
    y=3'b010;
    end 
endmodule
