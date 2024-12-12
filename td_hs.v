module td_hs();
wire dif,bor;
reg a,b;

d_hs m1(dif,bor,a,b);
initial begin
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=1;
end
endmodule

