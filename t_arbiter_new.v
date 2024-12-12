module t_arbiter_new();
reg clk,reset,gnt_ack,cfg_arb_scheme;
reg [7:0] port_req;
reg [2:0] ack_port;
wire [2:0] gnt_port,high_priority;
wire gnt_valid;


arbiter_new m1(port_req,cfg_arb_scheme,ack_port,gnt_ack,clk,reset,gnt_port,gnt_valid,high_priority);

initial begin
clk=1'b0;reset=1'b1;cfg_arb_scheme=1'b1;
#15 port_req=8'b0;reset=1'b0;
#10 port_req=8'b00010000;
#30 port_req=8'b0;gnt_ack=1'b1;ack_port=3'd4;
#10 port_req=8'b0;gnt_ack=1'b0;ack_port=3'bxxx;
#10 port_req=8'b10000001;
end

always #5 clk=~clk;

endmodule