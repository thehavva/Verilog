`timescale 1ns / 1ps

module divider_2_tb;
    reg clk;
    wire out;
    divider_2 UUT(.clk(clk), .out(out));
    
    initial begin
    clk=0;
    #100 ;
    end 
    always 
    #10 clk=~clk;
    
endmodule
