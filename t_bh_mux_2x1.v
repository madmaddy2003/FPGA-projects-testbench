module t_bh_mux_2x1();
wire y;
reg s;
reg [1:0] i;

bh_mux_2x1 m1(y,i,s);

initial begin
s=0;i=2'b01;
#10 s=1;
end
endmodule
