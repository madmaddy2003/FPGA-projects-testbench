module td_mux_4x1();
wire out;
reg s0,s1,i0,i1,i2,i3;

d_mux_4x1 m1(out,s0,s1,i0,i1,i2,i3);

initial begin
s0=0;s1=0;i0=0;i1=1;i2=0;i3=1;
#5 s0=1;s1=0;
#5 s0=0;s1=1;
#5 s0=1;s1=1;
end
endmodule
