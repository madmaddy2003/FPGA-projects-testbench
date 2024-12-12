module tff_syn(q,t,clk,rst);
output q;
input t,clk,rst;
reg q;
always@(posedge clk)
begin
if(rst)
q<=1'b0;
else
q<=~t;
end
endmodule
