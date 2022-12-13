`timescale 1ns / 1ps

module overflow_operations_tb;
    reg [15:0] in1,in2;
    wire [15:0] out1,out2,out3;
    
    overflow_operations UUT(.in1(in1), .in2(in2), .out1(out1), .out2(out2), .out3(out3));
    
    initial begin
    in1=4'hFFFF;
    in2=4'h0005;
    #100 ;
    end 
endmodule
