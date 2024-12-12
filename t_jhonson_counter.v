module t_jhonson_counter();
wire [3:0] q;
reg clk,rst;

jhonson_counter m1(q,clk,rst);
initial begin
clk=0;rst=0;
#2 rst=1;
#10 rst=10;
end
always
#5 clk=~clk;
endmodule
