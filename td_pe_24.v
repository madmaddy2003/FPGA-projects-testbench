module td_pe_24();
wire y0,y1;
reg x0,x1,x2,x3;

d_pe_24 m1(y0,y1,x0,x1,x2,x3);

initial begin
x0=1;x1=1;x2=1;x3=1;
#5 x0=1;x1=1;x2=1;x3=0;
#5 x0=1;x1=1;x2=0;x3=0;
#5 x0=1;x1=0;x2=0;x3=0;
end

endmodule