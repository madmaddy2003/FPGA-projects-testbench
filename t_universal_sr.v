module t_universal_sr();
wire [3:0] q;
reg [1:0] s;
reg clk,rst,si;
reg [3:0] pi;

universal_sr m1(q,clk,rst,s,si,pi);

initial begin
clk=0;rst=0;s=2'b00;si=1;pi=4'b0110;
#2 rst=1;
#8 rst=0;s=2'b01;
#40 s=2'b10;si=0;
#40 s=2'b11;
#10 pi=4'b0111;
#10 s=2'b00;
end
always #5 clk=~clk;
endmodule