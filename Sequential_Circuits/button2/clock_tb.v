`timescale 1ns / 1ps

module clock_tb;
    reg clk,button;
    wire led;
    
    clock uut(.clk(clk), .button(button), .led(led));
    
    initial begin
    #1 clk=0;
    forever
    #1 clk=~clk;
    end 
    
    initial begin
    #1 button=0;
    #1 button=1;
    #1 button=0;
    #10 button=0;
    #1 button=1;
    #10 button=1;
    end 
endmodule
