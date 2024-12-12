module t_barrel_shifter_4bit();
wire [3:0] y;
reg [3:0] a;
reg [1:0] k;

barrel_shifter_4bit m1(y,a,k);
initial begin
a=4'b0011;k=2'b00;
#10 a=4'b0111;k=2'b01;
#10 a=4'b0101;k=2'b10;
#10 a=4'b0001;k=2'b11;
#10 $stop;

end
endmodule