module td_ha();
wire s,c;
reg a,b;

d_ha m1(s,c,a,b);
initial begin
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=1;
end
endmodule
