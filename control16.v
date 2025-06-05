module control16(a,b,s);
input [15:0]a,b;
output [15:0]s;
wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;
control1 u9 (a[15],b[15],1'b0,x1);
control1 u10 (a[14],b[14],x1,x2);
control1 u11 (a[13],b[13],x2,x3);
control1 u12 (a[12],b[12],x3,x4);
control1 u13 (a[11],b[11],x4,x5);
control1 u14 (a[10],b[10],x5,x6);
control1 u15 (a[9],b[9],x6,x7);
control1 u16 (a[8],b[8],x7,x8);
control2 u1 (a[7],b[7],x1,x8,x9);
control1 u2 (a[6],b[6],x9,x10);
control1 u3 (a[5],b[5],x10,x11);
control1 u4 (a[4],b[4],x11,x12);
control1 u5 (a[3],b[3],x12,x13);
control1 u6 (a[2],b[2],x13,x14);
control1 u7 (a[1],b[1],x14,x15);
control1 u8 (a[0],b[0],x15,x16);

assign s = {x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16};
endmodule