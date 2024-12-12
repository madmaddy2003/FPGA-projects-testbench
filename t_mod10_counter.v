module t_mod10_counter();
wire [3:0] q;
wire fp;
reg clk,rst;

mod10_counter m1(q,clk,rst,fp);
initial begin
clk=0;rst=0;
#2 rst=1;
#10 rst=0;
end

always
#5 clk=~clk;

endmodule