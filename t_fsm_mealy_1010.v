module t_fsm_mealy_1010();
wire y;
reg i,clk,rst;

fsm_mealy_1010 m1(y,i,clk,rst);

initial begin
clk=1'b0;rst=1'b0;i=1;
#2 rst=1'b1;
#2 rst=1'b0;
#3 i=1;
#5 i=0;
#10 i=1;
#10 i=0;
#10 i=1;
#10 i=0;
#5 i=1;
end

always #5 clk=~clk;
endmodule