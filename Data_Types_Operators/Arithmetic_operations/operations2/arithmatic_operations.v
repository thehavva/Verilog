`timescale 1ns / 1ps

module arithmatic_operations(x,y1,y2,y3,y4);
    input [7:0] x;
    output [7:0] y1,y2,y3,y4;
    assign y1=x/2;
    assign y2=y1+x;
    assign y3=y2+x*2;
    assign y4=x*2;
endmodule
