`timescale 1ns / 1ps

module hex(x,y0,y1,y2);
    input [7:0] x;
    output reg [7:0] y0,y1,y2;
    
    initial
    begin
    y0=8'h00;
    y1=8'h00;
    y2=8'h00;
    end 
    
    always @(x)
    begin
    y0<=x/2;
    y1<=y0+x;
    y2<=y1+x*2;
    end 
endmodule
