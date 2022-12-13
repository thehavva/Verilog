`timescale 1ns / 1ps

module concatenation_tb;
    reg [7:0] in1;
    reg [7:0] in2;
    wire [5:0] var;
    
    concatenation UUT(.num1(in1), .num2(in2), .out(var));
    
    initial begin
    in1=8'b10110110;
    in2=8'b01101010;
    end 
endmodule
