module fa1(a,b,c,s,co);
input a,b,c;
output s,co;

reg s,co;
always @(a,b,c)
begin
if (a == 1 & b == 1 & c == 1)
begin
s = 0;
co = 1;
end
else if (a == 1 & b == 1 & c == 0)
begin
s = 0;
co = 1;
end
else if (a == 1 & b == 0 & c == 1)
begin
s = 0;
co = 1;
end
else if (a == 0 & b == 1 & c == 1)
begin
s = 0;
co = 1;
end
else
begin
s = 1;
co = 0;
end 

end

endmodule
