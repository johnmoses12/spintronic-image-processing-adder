module adder4(a,b,s);
input[3:0]a,b;
output [4:0]s;
//output cout;
wire c1;
aha a0 (a[0],b[0],s[0]);
afa a1(a[1],b[1],a[2],b[2],s[1]);
ha a2 (a[2],b[2],s[2],c1);
fa a3 (a[3],b[3],c1,s[3],s[4]);


endmodule

module adder4_tb();

reg [3:0]a,b;
wire [4:0]s;
//wire cout;

adder4 u1 (a,b,s);


initial
begin

a= 4'd9;
b= 4'd10;
#100;

a= 4'd11;
b= 4'd12;
end
	 
endmodule
