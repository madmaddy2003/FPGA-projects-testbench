module t_tff_syn();
wire q;
reg t,clk,rst;

tff_syn m1(q,t,clk,rst);
initial begin
clk=0;rst=1;t=1;
#10 rst=0;
#10 t=0;
#10 t=1;
#10 $stop;
end

always
#5 clk=~clk;

endmodule
