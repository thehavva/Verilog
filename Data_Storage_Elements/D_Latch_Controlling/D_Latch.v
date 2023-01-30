`timescale 1ns / 1ps

module D_Latch(d,c,q,qn);
    input d,c;
    output reg q,qn;
    always @ (d,c)
    if (c) {q,qn}<={d,~d};
    
endmodule
