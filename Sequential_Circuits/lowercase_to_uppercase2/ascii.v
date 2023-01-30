`timescale 1ns / 1ps

module ascii(x,y);
    input [7:0]x;
    output [7:0]y;
    
    assign x="a";
    assign y=x+32;
endmodule
