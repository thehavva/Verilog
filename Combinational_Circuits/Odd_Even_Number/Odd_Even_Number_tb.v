`timescale 1ns / 1ps

module Odd_Even_Number_tb;
    reg [3:0] x;
    wire y1,y2;
    Odd_Even_Number UUT(.x(x), .y1(y1), .y2(y2));
    initial begin
    x=4'b1010;
    end 
endmodule
