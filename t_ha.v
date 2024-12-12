module t_ha();
wire sum,cout;
reg a,b;

ha m1(sum,cout,a,b);
initial 
begin
a=0;b=0;
#10 a=1;b=0;
#10 a=0;b=1;
#10 a=1;b=1;

#10 $stop;
end

endmodule
