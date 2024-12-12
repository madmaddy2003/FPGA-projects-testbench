module t_fa();
wire sum,cout;
reg a,b,cin;

fa m1(sum,cout,a,b,cin);
initial 
begin
a=0;b=0;cin=0;
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $stop;
end

endmodule

