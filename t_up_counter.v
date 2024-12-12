module t_up_counter();
wire [3:0] q;
reg clk,rst;

up_counter m1(q,clk,rst);
initial begin
clk=0;rst=1;
#10 rst=0;
#100 $stop;
end
always
#5 clk=~clk;

endmodule
