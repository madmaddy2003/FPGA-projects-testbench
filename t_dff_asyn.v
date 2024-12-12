module t_dff_asyn();
wire q;
reg d,clk,rst;

dff_asyn m1(q,d,clk,rst);
initial begin
clk=0;rst=0;d=1;
#5 rst=1;
#5 rst=0;
#10 d=0;
#10 d=1;
#10 $stop;
end

always
#5 clk=~clk;

endmodule
