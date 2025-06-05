module control4(a,b,s);
input [3:0]a,b;
output [3:0]s;
wire x1,x2,x3,x4;

control1 u5 (a[3],b[3],1'b0,x1);
control1 u6 (a[2],b[2],x1,x2);
control2 u7 (a[1],b[1],x1,x2,x3);
control1 u8 (a[0],b[0],x3,x4);

assign s = {x1,x2,x3,x4};
endmodule