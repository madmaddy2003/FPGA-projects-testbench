module t_serial_adder();
wire sum,cout;
reg [3:0] a,b;
reg clk,rst;

serial_adder m1(sum,cout,a,b,clk,rst);

initial begin
clk=1'b0;rst=1'b0;a=4'b0101;b=4'b0111;
#3 rst=1'b1;
#3 rst=1'b0;
#30 a=4'b1101;b=4'b1010;
end

initial #50 $stop;
always #5 clk=~clk;

endmodule