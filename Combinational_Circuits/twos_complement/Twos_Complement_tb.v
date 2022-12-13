`timescale 1ns / 1ps

module Twos_Complement_tb;
    reg [3:0] x;
    wire [3:0] y1,y2;
    Twos_Complement UUT(.x(x), .y1(y1), .y2(y2));
    initial begin
    x=4'b1010;
    end 
endmodule
