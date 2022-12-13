`timescale 1ns / 1ps

module comparators2(x,y,z,out);
    input [7:0] x,y,z;
    output reg [7:0] out;
    
    initial 
    begin 
    out=8'b00000000;
    end 
    
    always @ (x,y,z)
    if((x>y) && (x>z))
    out=x;
    else if((y>x) && (y>z))
    out=y;
    else if((z>x) && (z>y))
    out=z;
    else
    out=8'b00000000;
    
endmodule
