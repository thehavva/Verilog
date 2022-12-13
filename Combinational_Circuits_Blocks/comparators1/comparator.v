`timescale 1ns / 1ps

module comparator(A,B,out);
    input [2:0] A,B;
    output reg [2:0] out;
    
    initial
    begin
    out=3'b000;
    end 
    
    always @ (A,B)
    begin
    if(A>B)
    out=3'b001; //output =1
    else if(A == B)
    out=3'b010;  //output = 2
    else if(A<B)
    out=3'b011;  //output = 3
    else
    out=3'b000;
    end 
    
endmodule
