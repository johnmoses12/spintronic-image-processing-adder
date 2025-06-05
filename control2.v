module control2(a,b,c1,c2,s);
input a,b,c1,c2;
output s;
wire x;
assign x = a & b;
assign s = c1 | c2 | x;

endmodule