module modifiedxor(a,b,c,s);
input a,b,c;
output s;
reg temp;
always @(a,b,c)
begin
if(c)
temp <= 1'b1;
else
temp <= a ^ b;
end
assign s = temp;


endmodule