`timescale 1ns / 1ps

module overflow_operations(in1,in2,out1,out2,out3);
    input [15:0] in1,in2;
    output [15:0] out1,out2,out3;
    assign out1=in1+in2;
    assign out2=in1-in2;
    assign out3=in2-in1;
endmodule
