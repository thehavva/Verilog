`timescale 1ns / 1ps

module comparator_tb;
    reg [2:0] A,B;
    wire [2:0] out;
    
    comparator UUT( .A(A), .B(B), .out(out));
    initial begin
    A=3'b100;
    B=3'b110;
    end 
endmodule
