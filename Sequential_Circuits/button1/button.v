`timescale 1ns / 1ps

module button(clk,button1,out);
    input clk,button1;
    output reg out;
    initial out = 0;
    always @(posedge button1)
    begin
    if(button1==1)
    out <= out +1;
    end 
endmodule
