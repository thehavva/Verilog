`timescale 1ns / 1ps

module lowercase_to_uppercase_tb;
    reg clk;
    reg [7:0] state;
    wire [7:0] out;
    
    lowercase_to_uppercase UUT(clk,state,out);
    
    initial begin
    clk=0;
    #10;
    state=8'h61;
    #50;
    state=8'h62;
    #50;
    state=8'h63;
    #50;
    state=8'h65;
    #50;
    state=8'h67;
    #50;
    state=8'h69;
    #50;
    end
    always #10 clk=~clk;
endmodule
