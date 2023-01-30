`timescale 1ns / 1ps

module a_divider(clk,out);
    input clk;
    output reg [1:0] out;
    integer counter=0;
    
    always @(posedge clk)
    begin
    counter=counter+1;
    if(counter==4) begin
    out[0]=out[0]+1'b1;
    counter=1;
    end 
    end 
    
    always @(posedge out[0])
    begin
    counter=counter+1;
    if(counter==4) begin
    out[1]=out[1]+1'b1;
    counter=1;
    end 
    end 
endmodule
