`timescale 1ns / 1ps

module SR_Latch(s,r,c,q,qn);
    input s,r,c;
    output reg q,qn; //as a register for data stored 
    
    always @ (s,r,c)
    if (s&c) {q,qn}<=2'b10;
    else if (r&c)  {q,qn}<=2'b01;
endmodule
