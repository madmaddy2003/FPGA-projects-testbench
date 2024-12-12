module t_rand_seq();
wire [3:0] q;
reg clk,rst;

rand_seq m1(q,clk,rst);
initial begin
clk=0;rst=0;
#2 rst=1;
#10 rst=0;
end

always
#5 clk=~clk;

endmodule