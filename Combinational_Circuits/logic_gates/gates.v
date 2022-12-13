`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2022 15:15:56
// Design Name: 
// Module Name: gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gates(in1,in2,in3,out1,out2);
    input in1,in2,in3;
    output out1,out2;
    
    wire t1,t2,t3,t4;
    
    and u1(t1,in1,in2);
    not u2(t2,in2);
    or u3(t3,t1,t2);
    xor u4(t4,in1,in3);
    and u5(out1,t3,t2);
    not u6(out2,t4);
endmodule
