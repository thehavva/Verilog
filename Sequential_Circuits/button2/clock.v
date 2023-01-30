`timescale 1ns / 1ps

module clock(clk,button,led);
    input clk,button;
    output reg led;
    
    initial led=0;
    
    always @ (posedge clk)
    if(button==1)
    led=~led;
    
endmodule
