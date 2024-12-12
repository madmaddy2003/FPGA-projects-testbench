module td_decimal_adder();
wire [3:0] s;
wire cout;
reg [3:0] a,b;
reg cin;

d_decimal_adder m1(s,cout,a,b,cin);
initial begin
a=4'b0010;b=4'b0010;cin=0;
#10 a=4'b0010;b=4'b0010;cin=1;
#10 a=4'b0011;b=4'b0100;cin=1;
#10 a=4'b0011;b=4'b1100;cin=1;
#10 $stop;
end
endmodule
