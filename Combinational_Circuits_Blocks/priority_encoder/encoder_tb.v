`timescale 1ns / 1ps

module encoder_tb;
    reg [3:0] x;
    wire [1:0] y;
    encoder UUT(.x(x), .y(y));
    initial begin 
    x=4'b0001;
    #10;
    x=4'b001x;
    #10;
    x=4'b01xx;
    #10;
    x=4'b1xxx;
    #10;
    end 
endmodule
