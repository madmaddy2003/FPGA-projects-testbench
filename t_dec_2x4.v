module t_dec_2x4();
wire o0,o1,o2,o3;
reg a0,a1,e;

dec_2x4 m1(o0,o1,o2,o3,e,a0,a1);
initial begin
a0=0;a1=0;e=1;
#5 a0=1;a1=0;e=1;
#5 a0=0;a1=1;e=1;
#5 a0=1;a1=1;e=1;
end
endmodule