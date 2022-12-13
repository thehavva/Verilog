`timescale 1ns / 1ps

module decoder2(x,y);
    input [2:0] x;
    output reg [7:0] y;
    
    initial 
    y=8'b00000000;
    
    always @ (x)
    case(x)
    3'b000 : y=8'b00000000; 
    3'b001 : y=8'b00000000;
    3'b010 : y=8'b00000010;
    3'b011 : y=8'b00000000;
    3'b100 : y=8'b00000100;
    3'b101 : y=8'b00000000;
    3'b110 : y=8'b00000000;
    3'b111 : y=8'b00000000; 
    endcase
endmodule
