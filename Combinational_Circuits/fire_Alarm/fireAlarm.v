`timescale 1ns / 1ps

module fireAlarm(smoke,alarm1,alarm2);

    input [3:0] smoke;
    output alarm1,alarm2;
    assign alarm1 = smoke>=7;
    assign alarm2= (smoke < 7) ? 0 : 1;
endmodule
