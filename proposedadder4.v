module proposedadder4(a,b,s);
input[3:0]a,b;
output [3:0]s;
wire [3:0] y;
control4 u17 (a,b,y);
modifiedxor u1 (a[0],b[0],y[0],s[0]);
modifiedxor u2 (a[1],b[1],y[1],s[1]);
modifiedxor u3 (a[2],b[2],y[2],s[2]);
modifiedxor u4 (a[3],b[3],y[3],s[3]);


endmodule

module proposedadder4_tb();

reg [3:0]a,b;
wire [3:0]s;


proposedadder4 u1 (a,b,s);


initial
begin

a= 4'd1;
b= 4'd5;
#100;

a= 4'd11;
b= 4'd2;
end
	 
endmodule
