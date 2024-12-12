module t_custom_counter();
wire [3:0] final_count;
reg clk,rst;

custom_counter m1(final_count,clk,rst);

initial begin
clk=1'b0;rst=1'b1;
#10 rst=1'b0;
end
always
#5 clk=~clk;

endmodule