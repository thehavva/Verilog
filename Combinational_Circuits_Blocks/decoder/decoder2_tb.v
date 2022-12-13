`timescale 1ns / 1ps

module decoder2_tb;
    reg [2:0] x;
    wire [7:0] y;
    
    decoder2 UUT(.x(x), .y(y));
    initial begin
    x=3'b010;
    end 
endmodule
