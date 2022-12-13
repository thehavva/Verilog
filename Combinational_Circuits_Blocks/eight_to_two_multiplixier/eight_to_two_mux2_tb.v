`timescale 1ns / 1ps

module eight_to_two_mux2_tb;
    reg x,y,z;
    reg [2:0] s0,s1,s2,s3,s4,s5,s6,s7;
    wire out;
    eight_to_two_mux2 UUT( .s0(s0), .s1(s1), .s2(s2), .s3(s3), .s4(s4), .s5(s5), .s6(s6), .s7(s7), .x(x), .y(y), .z(z), .out(out));
    initial begin
    s0=3'b000;
    s1=3'b001;
    s2=3'b010;
    s3=3'b011;
    s4=3'b100;
    s5=3'b101;
    s6=3'b110;
    s7=3'b111;
    x=1;
    y=0;
    z=0;
    end 
endmodule
