module t_fs();
wire dif,bor;
reg a,b,bin;

fs m1(dif,bor,a,b,bin);
initial begin
a=0;b=0;bin=0;
#10 a=0;b=0;bin=1;
#10 a=0;b=1;bin=0;
#10 a=0;b=1;bin=1;
#10 a=1;b=0;bin=0;
#10 a=1;b=0;bin=1;
#10 a=1;b=1;bin=0;
#10 a=1;b=1;bin=1;
#10 $stop;
end
endmodule
