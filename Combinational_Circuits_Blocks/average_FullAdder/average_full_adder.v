`timescale 1ns / 1ps

module average_full_adder(x,y,ci,s,co);
    input x,y,ci;
    output s,co;
    
    wire t1,t2,t3;
    xor u1(t1,x,y);
    xor u2(s,t1,ci);
    and u3(t2,t1,ci);
    and u4(t3,x,y);
    or  u5(co,t2,t3);
    
endmodule