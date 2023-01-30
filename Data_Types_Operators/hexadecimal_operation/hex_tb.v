`timescale 1ns / 1ps

module hex_tb;
    reg [7:0] x;
    wire [7:0] y0,y1,y2;
    
    hex UUT(x,y0,y1,y2);
    
    initial begin
    x=8'h4F;
    #100;
    end 
endmodule
