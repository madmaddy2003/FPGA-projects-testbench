module t_array_mul_4bit();
wire [7:0] z;
reg [3:0] A,B;

array_mul_4bit m1(z,A,B);
initial begin
A=4'b0010;B=4'b0010;
#10 A=4'b0110;B=4'b0010;
#10 A=4'b0011;B=4'b0100;
#10 $stop;
end
endmodule