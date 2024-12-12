module t_mux_2X1();
wire out;
reg s,i0,i1;

mux_2X1 m1(out,s,i0,i1);

initial begin
s=0;i0=0;i1=1;
#5 s=1;
end
endmodule