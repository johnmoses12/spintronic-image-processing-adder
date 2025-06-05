module adder(a,b,s,cout);
input[7:0]a,b;
output [7:0]s;
output cout;
wire c1,c2,c3,c4,c5,c6,c7;
aha a0 (a[0],b[0],s[0]);
afa a1(a[1],b[1],a[2],b[2],s[1]);
ha a2 (a[2],b[2],s[2],c1);
fa a3 (a[3],b[3],c1,s[3],c2);
fa a4 (a[4],b[4],c2,s[4],c3);
fa a5 (a[5],b[5],c3,s[5],c4);
fa a6 (a[6],b[6],c4,s[6],c5);
fa a7 (a[7],b[7],c5,s[7],c6);
fa a8 (c6,1'b0,1'b1,s[8],cout);



endmodule

module adder_tb();

reg [7:0]a,b;
wire [8:0]s;
wire cout;


adder u1 (a,b,s,cout);


initial
begin

a= 8'd16;
b= 8'd15;
#100;

a= 8'd11;
b= 8'd21;
end
	 
endmodule
