`timescale 1ns / 1ps

module Decoder(x,y);
    input [1:0] x;
    output reg [3:0] y;
    
    initial 
    y=4'b0000;
    
    always @(x)
    case(x)
    2'b00 : y=4'b0001;
    2'b01 : y=4'b0010;
    2'b10 : y=4'b0100;
    2'b11 : y=4'b1000;
    endcase 
endmodule
