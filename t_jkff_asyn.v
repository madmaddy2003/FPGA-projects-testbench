module t_jkff_asyn();
wire q;
reg j,k,clk,rst;

jkff_asyn m1(q,j,k,clk,rst);
initial begin
clk=0;rst=0;j=0;k=0;
#5 rst=1;
#5 rst=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
#10 $stop;
end

always
#5 clk=~clk;

endmodule
