module t_dff_syn();
wire q;
reg d,clk,rst;

dff_syn m1(q,d,clk,rst);
initial begin
clk=0;rst=1;d=1;
#10 rst=0;
#10 d=0;
#10 d=1;
#10 $stop;
end

always
#5 clk=~clk;

endmodule