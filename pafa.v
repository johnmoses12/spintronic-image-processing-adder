module pafa(a,b,c,s,co);
input a,b,c;
output s,co;
wire i1;

assign i1 = (a & b)| (b & c) | ( c & a);
assign co = i1;
assign s = ~i1;

endmodule
