module t_updown_counter();
wire [3:0] q;
reg clk,rst,ud;
updown_counter m1(q,ud,clk,rst);
initial begin
clk=0;rst=0;ud=1;
#2 rst=1;
#10 rst=0;
#50 ud=0;
#100 $stop;
end
always
#5 clk=~clk;

endmodule
