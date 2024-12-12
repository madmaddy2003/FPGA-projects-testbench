module td_barrel_shifter_4bit();
wire [3:0] y;
reg [3:0] a;
reg [1:0] k;

d_barrel_shifter_4bit m1(y,a,k);

initial begin
k=2'b00;a=4'b0011;
#5 k=2'b01;
#5 k=2'b10;
#5 k=2'b11;
end
endmodule