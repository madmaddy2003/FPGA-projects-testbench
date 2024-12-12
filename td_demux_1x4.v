module td_demux_1x4();
wire o0,o1,o2,o3;
reg s0,s1,i;

d_demux_1x4 m1(o0,o1,o2,o3,s0,s1,i);

initial begin
s1=0;s0=0;i=0;
#5 s1=0;s0=1;i=1;
#5 s1=1;s0=0;i=0;
#5 s1=1;s0=1;i=1;
end
endmodule

