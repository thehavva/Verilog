`timescale 1ns / 1ps

module divider_tb;
    reg clk;
    wire [3:0] out;
    divider uut(.clk(clk), .out(out));
    
    initial begin
    clk=0;
    #100;
    end 
    
    always 
    #10 clk=~clk;
    
endmodule
