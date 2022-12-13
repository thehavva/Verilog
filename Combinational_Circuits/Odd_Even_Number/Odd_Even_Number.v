`timescale 1ns / 1ps

module Odd_Even_Number(x,y1,y2);
    input [3:0] x;
    output y1,y2;
    assign y2=x[0]&1;
    assign y1=~y2;
endmodule
