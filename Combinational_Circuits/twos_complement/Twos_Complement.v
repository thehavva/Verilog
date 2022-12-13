`timescale 1ns / 1ps

module Twos_Complement(x,y1,y2);
    input [3:0] x;
    output [3:0] y1,y2;
    assign y1=~x;
    assign y2=y1+1;
endmodule
