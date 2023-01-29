module m21_1bit( D0, D1, S, Y);
input wire D0,D1;
input wire S;
output reg Y;
always @(D0 or D1 or S)
begin

if(S) 
Y= D1;
else
Y=D0;

end

endmodule