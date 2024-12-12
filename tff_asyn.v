module tff_asyn(q,t,clk,rst);
output q;
input t,clk,rst;
reg q;
always@(posedge clk,posedge rst)
begin
if(rst)
q<=1'b0;
else
q<=~t;
end
endmodule
