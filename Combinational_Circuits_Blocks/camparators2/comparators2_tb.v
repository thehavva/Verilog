`timescale 1ns / 1ps

module comparators2_tb;
    reg [7:0] x,y,z;
    wire [7:0] out;
    
    comparators2 UUT(.x(x), .y(y), .z(z), .out(out));
    
    initial begin
    x=8'hA4;
    y=8'h2C;
    z=8'h6F;
    end
endmodule
