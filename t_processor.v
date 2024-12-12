module t_processor();
reg [15:0] din;
reg resetn,clock,run;
wire done;
wire [15:0] bus;
wire [8:0] ir;
wire [1:0] cnt;//
wire [15:0] a,g;


processor m1(din,resetn,run,done,clock,bus,ir,cnt,a,g);

initial begin

clock=1'b0;resetn=1'b0;run=1'b0;din=16'h0000;
#20 resetn=1'b1;run=1'b1;din=16'h2000;
#20 din=16'h0005;run=1'b0;
#20 din=16'h0400;run=1'b1;
#20 run=1'b0;
#20 din=16'h4080;run=1'b1;
#20 run=1'b0;
#60 din=16'h6000;run='b1;
#20 din=16'h0000;run=1'b0;
#80 $stop;


end

always
#10 clock=~clock;

endmodule
