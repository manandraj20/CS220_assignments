module m21( D0, D1, S, Y);
parameter K=16;
input[K-1:0] D0, D1;
input S;
output reg[K-1:0] Y;

always @(D0 or D1 or S)
begin

if(S) 
Y= D1;
else
Y=D0;

end

endmodule