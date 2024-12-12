module t_rca_4bit();
wire [3:0] s;
wire cout;
reg [3:0] a,b;
reg cin;

rca_4bit m1(s,cout,a,b,cin);

initial begin
a=4'b0001;b=4'b0001;cin=0;
#10 a=4'b0011;b=4'b0101;cin=0;
#10 a=4'b1001;b=4'b1001;cin=0;
#10 a=4'b1101;b=4'b0001;cin=1;
#10 $stop;
end

endmodule
