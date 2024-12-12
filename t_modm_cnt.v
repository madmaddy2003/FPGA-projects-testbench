module t_modm_cnt();
wire [3:0] q;
reg [3:0] d;
reg clk,clr,x;

modm_cnt m1(q,d,clk,clr,x);

initial begin
clk=1'b0;clr=1'b0;x=1;d=4'b0;
#2 clr=1'b1;
#2 clr=1'b0;
#40 x=0;
#20 x=1;
end
always #5 clk=~clk;

endmodule