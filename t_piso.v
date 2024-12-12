module t_piso();
wire so;
reg [3:0] pi;
reg clk,rst,load;


piso m1(so,pi,clk,rst,load);

initial begin
clk=1'b0; rst=1'b0;pi=4'b0101;load=1'b0;
#2 rst=1'b1;
#10 rst=1'b0;
#10 load=1'b1;
#10 load=1'b0;
#10 pi=4'b0110;
#40 load=1'b1;
#10 load=1'b0;
end

always
#5 clk=~clk;

endmodule
