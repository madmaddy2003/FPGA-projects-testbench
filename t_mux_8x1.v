module t_mux_8x1();
wire y;
reg s0,s1,s2;
reg [7:0] i;

mux_8x1 m1(y,s0,s1,s2,i);

initial begin
i=8'b00001010;s0=0;s1=0;s2=0;
#10 i=8'b00001010;s0=1;s1=0;s2=0;
#10 i=8'b00001010;s0=1;s1=1;s2=0;
#10 i=8'b00001010;s0=1;s1=1;s2=1;
#10 $stop;
end

endmodule