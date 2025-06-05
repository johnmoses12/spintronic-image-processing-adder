module padder16(a,b,c,s,co);
input[15:0]a,b;
input c;

output [15:0]s;
output co;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13;
pafa a0 (a[0],b[0],c,s[0],c1);
pafa a1 (a[1],b[1],c1,s[1],c2);
pafa a2 (a[2],b[2],c2,s[2],c3);
pafa a3 (a[3],b[3],c3,s[3],c4);
pafa a4 (a[4],b[4],c4,s[4],c5);
pafa a5 (a[5],b[5],c5,s[5],c6);
control1  u0 (a[9],b[9],c6,y1);
modifiedxor u1 (a[6],b[6],y1,s[6]);
modifiedxor u2 (a[7],b[7],y1,s[7]);
modifiedxor u3 (a[8],b[8],y1,s[8]);
modifiedxor u4 (a[9],b[9],y1,s[9]);
fa a10 (a[10],b[10],1'b0,s[10],c11);
fa a11(a[11],b[11],c11,s[11],c12);
fa a12 (a[12],b[12],c12,s[12],c13);
fa a13 (a[13],b[13],c13,s[13],c14);
fa a14 (a[14],b[14],c14,s[14],c15);
fa a15 (a[15],b[15],c15,s[15],co);



endmodule

module padder16_tb();

reg [15:0]a,b;
reg c;
wire [15:0]s;
wire co;

padder16 u1 (a,b,c,s,co);


initial
begin

a= 16'd8;
b= 16'd15;
c = 1'b0;
#100;

a= 16'd11;
b= 16'd31;
end
	 
endmodule
