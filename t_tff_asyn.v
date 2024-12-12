module t_tff_asyn();
wire q;
reg t,clk,rst;

tff_asyn m1(q,t,clk,rst);
initial begin
clk=0;rst=0;t=1;
#5 rst=1;
#5 rst=0;
#10 t=0;
#10 t=1;
#10 $stop;
end

always
#5 clk=~clk;

endmodule