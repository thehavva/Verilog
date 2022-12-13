`timescale 1ns / 1ps

module fireAlarm_tb;
    reg [3:0] s;
    wire o1,o2;
    fireAlarm UUT(.smoke(s), .alarm1(o1), .alarm2(o2));
    initial begin
    s=4'b0110;
    end 
endmodule
