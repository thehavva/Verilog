`timescale 1ns / 1ps

module full_subtractor_tb;
    reg [3:0] x,y;
    wire [4:0] number;
    
    full_subtractor UUT(.x(x), .y(y), .number(number));
    initial begin
    x=4'b0111;
    y=4'b1101;
    #100;
    end 
endmodule
