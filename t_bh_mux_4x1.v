module t_bh_mux_4x1();
wire y;
reg [3:0] i;
reg [1:0] s;

bh_mux_4x1 m1(y,i,s);

initial begin
s=2'b00;i=4'b0110;
#20 s=2'b01;
#20 s=2'b10;
#20 s=2'b11;
end
endmodule