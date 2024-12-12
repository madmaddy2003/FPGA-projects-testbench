module t_hs();
wire dif,bor;
reg a,b;

hs m1(dif,bor,a,b);

initial begin
a=0;b=0;
#10 a=1;b=0;
#10 a=0;b=1;
#10 a=1;b=1;

#10 $stop;
end
endmodule