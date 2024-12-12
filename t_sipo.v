module t_sipo();
wire [3:0] q;
reg si,clk,rst;

sipo m1(q,si,clk,rst);

initial begin
clk=1'b0;rst=1'b0;si=1'b1;
#2 rst=1'b1;
#10 rst=1'b0;
#50 si=1'b0;
#200 $stop;
end

always
#5 clk=~clk;

endmodule