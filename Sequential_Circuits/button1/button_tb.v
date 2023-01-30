`timescale 1ns / 1ps

module button_tb;
    reg button1,clk;
    wire out;
    button UUT(.clk(clk), .button1(button1), .out(out));
    initial begin
    #1 clk=0;
    forever
    #1 clk=~clk;
    end 
    
    initial begin
    #1 button1=1;
    #10;
    #1 button1=1;
    #10;
    #1 button1=1;
    #1 button1=1;
    #1 button1=1;
    end 
endmodule
