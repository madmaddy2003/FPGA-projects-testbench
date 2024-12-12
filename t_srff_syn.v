module t_srff_syn();
wire q;
reg s,r,clk,rst;

srff_syn m1(q,s,r,clk,rst);
initial begin
clk=0;rst=1;s=0;r=0;
#10 rst=0;
#10 s=0;r=1;
#10 s=1;r=0;
#10 s=1;r=1;
#10 $stop;
end

always
#5 clk=~clk;

endmodule
