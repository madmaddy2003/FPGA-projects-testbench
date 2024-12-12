module t_siso();
wire so;
reg si,clk,rst;

siso m1(so,si,clk,rst);

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