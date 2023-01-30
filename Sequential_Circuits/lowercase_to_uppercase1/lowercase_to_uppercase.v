`timescale 1ns / 1ps

module lowercase_to_uppercase(clk,state,out);
    input clk;
    input [7:0] state;
    output reg [7:0] out;
    
    initial out=8'h00;
    
    always @(clk)
    case(state)
        8'h61 : out=8'h41; //a-->A
        8'h62 : out=8'h42; //b-->B
        8'h63 : out=8'h43; //c-->C 
        8'h64 : out=8'h44; //d-->D
        8'h65 : out=8'h45; //e-->E
        8'h66 : out=8'h46; //f-->F 
        8'h67 : out=8'h47; //g-->G
        8'h68 : out=8'h48; //h-->H
        8'h69 : out=8'h49; //i-->I
    endcase
endmodule
