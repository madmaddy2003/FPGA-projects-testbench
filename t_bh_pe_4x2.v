module t_bh_pe_4x2();
wire [1:0] y;
reg [3:0] i;

bh_pe_4x2 m1(y,i);
initial begin
i=4'b1000;
#10 i=4'b0100;
#10 i=4'b0010;
#10 i=4'b0000;
#10 $stop;
end
endmodule