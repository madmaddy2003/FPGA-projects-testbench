module td_addsub_4bit();
wire [3:0] s;
wire [3:0] cout;
reg [3:0] a,b;
reg k;

d_addsub_4bit m1(s,cout,a,b,k);

initial begin
a=4'b0001;b=4'b0001;k=0;
#10 a=4'b0011;b=4'b0101;k=0;
#10 a=4'b1001;b=4'b1001;k=1;
#10 a=4'b1101;b=4'b0001;k=1;
#10 $stop;
end

endmodule


