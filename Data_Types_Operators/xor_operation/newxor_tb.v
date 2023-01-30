module newxor_tb;
reg clk;
wire [4:0] data;
newxor UUT (clk, data);
 
initial begin
 clk = 0;
 forever
 #20 clk = ~clk;
 end
endmodule