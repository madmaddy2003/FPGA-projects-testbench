module t_pipo();
wire [3:0] po;
reg [3:0] pi;
reg clk,rst,load;


pipo m1(po,pi,clk,rst,load);

initial begin
clk=1'b0; rst=1'b0;pi=4'b0101;load=1'b0;
#2 rst=1'b1;
#10 rst=1'b0;
#10 load=1'b1;
#10 pi=4'b0110;
#10 load=1'b0;
end

always
#5 clk=~clk;

endmodule
