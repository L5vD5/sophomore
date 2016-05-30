
module a1bit(a,b,Ci,M,Co,S);
input a;
input b;
input Ci;
input M;
output S;
output Co;

wire X = b^M;


assign S = a^X^Ci;
assign Co = (a&X)|(X&Ci)|(Ci&a);



endmodule
