module afa(a1,b1,a2,b2,s);
input a1,b1,a2,b2;
output s;

assign s = (a1 ^ b1) & (a2 & b2);

endmodule
