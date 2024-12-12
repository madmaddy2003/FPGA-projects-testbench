module t_addsub_4bit();
wire [3:0] s;
wire cout;
reg [3:0] a,b;
reg k;

addsub_4bit m1 (s,cout,a,b,k);
initial begin
a=4'b0010;b=4'b0010;k=0;
#10 a=4'b0010;b=4'b0010;k=1;
#10 a=4'b0011;b=4'b0100;k=1;
#10 $stop;
end
endmodule
