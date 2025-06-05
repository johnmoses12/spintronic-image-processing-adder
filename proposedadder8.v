module proposedadder(a,b,s);
input[7:0]a,b;
output [8:0]s;
wire [7:0] y;
wire c1,c2,c3;
control u9 (a,b,y);
modifiedxor u1 (a[0],b[0],y[0],s[0]);
modifiedxor u2 (a[1],b[1],y[1],s[1]);
modifiedxor u3 (a[2],b[2],y[2],s[2]);
modifiedxor u4 (a[3],b[3],y[3],s[3]);
modifiedxor u5 (a[4],b[4],y[4],s[4]);
modifiedxor u6 (a[5],b[5],y[5],s[5]);
modifiedxor u7 (a[6],b[6],y[6],s[6]);
modifiedxor u8 (a[7],b[7],y[7],s[7]);


endmodule

module proposedadder_tb();

reg [7:0]a,b;
wire [7:0]s;


proposedadder u1 (a,b,s);


initial
begin

a= 8'd16;
b= 8'd15;
#100;

a= 8'd11;
b= 8'd21;
end
	 
endmodule
