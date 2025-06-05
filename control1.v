module control1(a,b,c,s);
input a,b,c;
output s;
wire x;
assign x = a & b;
assign s = c | x;

endmodule