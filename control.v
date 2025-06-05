module control(a,b,s);
input [7:0]a,b;
output [7:0]s;
wire x1,x2x3,x4,x5,x6,x7,x8;
control1 u1 (a[7],b[7],1'b0,x1);
control1 u2 (a[6],b[6],x1,x2);
control1 u3 (a[5],b[5],x2,x3);
control1 u4 (a[4],b[4],x3,x4);
control2 u5 (a[3],b[3],x1,x4,x5);
control1 u6 (a[2],b[2],x5,x6);
control1 u7 (a[1],b[1],x6,x7);
control1 u8 (a[0],b[0],x7,x8);
assign s = {x1,x2,x3,x4,x5,x6,x7,x8};
endmodule