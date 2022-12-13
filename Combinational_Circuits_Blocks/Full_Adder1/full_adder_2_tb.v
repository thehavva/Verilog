`timescale 1ns / 1ps

module full_adder_2_tb;
    reg [2:0] x,y;
    wire [3:0] num;
    full_adder_2 UUT(.x(x), .y(y), .number(num));
    initial begin
    x=3'b111;
    y=3'b010;
    end 
endmodule
