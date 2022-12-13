`timescale 1ns / 1ps

module Decoder_tb;
    reg [1:0] x;
    wire [3:0] y;
    
    Decoder UUT(.x(x), .y(y));
    initial begin
    x=2'b01;
    end 
endmodule
