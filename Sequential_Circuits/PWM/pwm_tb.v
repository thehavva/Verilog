`timescale 1ns / 1ps

module pwm_tb;
    reg clk=0;
    wire [3:0] led;
    
    pwm uut(clk,led);
    always #5 clk=~clk;
    
endmodule
