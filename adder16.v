module adder16(a,b,s,co);
input[15:0]a,b;
output [15:0]s;
output co;

wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13;
aha a0 (a[0],b[0],s[0]);
afa a1(a[1],b[1],a[2],b[2],s[1]);
ha a2 (a[2],b[2],s[2],c1);
fa a3 (a[3],b[3],c1,s[3],c2);
fa a4 (a[4],b[4],c2,s[4],c3);
fa a5 (a[5],b[5],c3,s[5],c4);
fa a6 (a[6],b[6],c4,s[6],c5);
fa a7 (a[7],b[7],c5,s[7],c6);
fa a8 (a[8],b[8],c6,s[8],c7);
fa a9 (a[9],b[9],c7,s[9],c8);
fa a10 (a[10],b[10],c8,s[10],c9);
fa a11(a[11],b[11],c9,s[11],c10);
fa a12 (a[12],b[12],c10,s[12],c11);
fa a13 (a[13],b[13],c11,s[13],c12);
fa a14 (a[14],b[14],c12,s[14],c13);
fa a15 (a[15],b[15],c13,s[15],co);



endmodule

module adder16_tb();

reg [15:0]a,b;
wire [15:0]s;
wire co;

adder16 u1 (a,b,s,co);


initial
begin

a= 16'd16;
b= 16'd15;
#100;

a= 16'd11;
b= 16'd18;
end
	 
endmodule
