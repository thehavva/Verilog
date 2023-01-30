`timescale 1ns / 1ps

module a_divider_tb;
    reg clk;
    wire [1:0] out;
    a_divider UUT(.clk(clk), .out(out));
    
    initial begin
    clk=0;
    #100 ;
    end 
    
    always #10 clk=~clk;
endmodule
