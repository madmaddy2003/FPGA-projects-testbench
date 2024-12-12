module tb_sram();
reg [12:0] A;
reg cs1_n,cs2,we_n,oe_n;
wire [7:0] io;


reg[7:0] data;
wire eff_we_n,cs_n;

sram m1(cs1_n,cs2,we_n,oe_n,A,io);

assign cs_n=(cs1_n & (~cs2));
assign eff_we_n=(we_n | cs_n);
assign io=eff_we_n?data:8'bz;
initial begin
//address1 latch
cs1_n=1'b0; cs2=1'b1; we_n=1'b1; data=8'd6;
#10 we_n=1'b0;A=13'd0;
//writing data1
#10 we_n=1'b1;oe_n=1'b1;
//reading data1
#10 oe_n=1'b0;we_n=1'b0;
#10 we_n=1'b1;cs1_n=1'b1;cs2=1'b0;

//address2 latch
#10 cs1_n=1'b0; cs2=1'b1; we_n=1'b1; data=8'd7;
#10 we_n=1'b0;A=13'd1;
//writing data2
#10 we_n=1'b1;oe_n=1'b1;
//reading data2
#10 oe_n=1'b0;we_n=1'b0;
#10 we_n=1'b1;cs1_n=1'b1;cs2=1'b0;

//address3 latch
#10 cs1_n=1'b0; cs2=1'b1; we_n=1'b1; data=8'd10;
#10 we_n=1'b0;A=13'd2;
//writing data3
#10 we_n=1'b1;oe_n=1'b1;
//reading data3
#10 oe_n=1'b0;we_n=1'b0;
#10 we_n=1'b1;cs1_n=1'b1;cs2=1'b0;

//address4 latch
#10 cs1_n=1'b0; cs2=1'b1; we_n=1'b1; data=8'd8;
#10 we_n=1'b0;A=13'd3;
//writing data4
#10 we_n=1'b1;oe_n=1'b1;
//reading data4
#10 oe_n=1'b0;we_n=1'b0;
#10 we_n=1'b1;cs1_n=1'b1;cs2=1'b0;

end
endmodule
