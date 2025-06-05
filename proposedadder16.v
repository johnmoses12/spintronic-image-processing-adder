module proposedadder16(a,b,s);
input[15:0]a,b;
output [15:0]s;
wire [15:0] y;
control16 u17 (a,b,y);
modifiedxor u1 (a[0],b[0],y[0],s[0]);
modifiedxor u2 (a[1],b[1],y[1],s[1]);
modifiedxor u3 (a[2],b[2],y[2],s[2]);
modifiedxor u4 (a[3],b[3],y[3],s[3]);
modifiedxor u5 (a[4],b[4],y[4],s[4]);
modifiedxor u6 (a[5],b[5],y[5],s[5]);
modifiedxor u7 (a[6],b[6],y[6],s[6]);
modifiedxor u8 (a[7],b[7],y[7],s[7]);
modifiedxor u9 (a[8],b[8],y[8],s[8]);
modifiedxor u10 (a[9],b[9],y[9],s[9]);
modifiedxor u11 (a[10],b[10],y[10],s[10]);
modifiedxor u12 (a[11],b[11],y[11],s[11]);
modifiedxor u13 (a[12],b[12],y[12],s[12]);
modifiedxor u14 (a[13],b[13],y[13],s[13]);
modifiedxor u15 (a[14],b[14],y[14],s[14]);
modifiedxor u16 (a[15],b[15],y[15],s[15]);

endmodule

module proposedadder16_tb();

reg [15:0]a,b;
wire [15:0]s;


proposedadder16 u1 (a,b,s);


initial
begin

a= 16'd16;
b= 16'd15;
#100;

a= 16'd11;
b= 16'd21;
end
	 
endmodule
