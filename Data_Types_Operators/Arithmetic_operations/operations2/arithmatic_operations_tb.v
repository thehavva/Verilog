`timescale 1ns / 1ps

module arithmatic_operations_tb;
    reg [7:0] x;
    wire [7:0] y1,y2,y3,y4;
    
    arithmatic_operations UUT(.x(x), .y1(y1), .y2(y2), .y3(y3), .y4(y4));
    initial begin
    x=8'h4f;
    end 
endmodule
