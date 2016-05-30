`include "a1bit.v"
module addsub(A,  B,  M,  S,  C,  V,  N, Z);
input [7:0]	A;
input [7:0]	B;
input 		M;
output	 [7:0]  S;
output		C;
output		V;
output		N;
output		Z;

wire Co[7:0];

a1bit a1bit00(A[0],B[0],M,M,Co[0],S[0]);
a1bit a1bit01(A[1],B[1],Co[0],M,Co[1],S[1]);
a1bit a1bit02(A[2],B[2],Co[1],M,Co[2],S[2]);
a1bit a1bit03(A[3],B[3],Co[2],M,Co[3],S[3]);
a1bit a1bit04(A[4],B[4],Co[3],M,Co[4],S[4]);
a1bit a1bit05(A[5],B[5],Co[4],M,Co[5],S[5]);
a1bit a1bit06(A[6],B[6],Co[5],M,Co[6],S[6]);
a1bit a1bit07(A[7],B[7],Co[6],M,Co[7],S[7]);

assign V = Co[7] ^ Co[6];

assign C = Co[7];

assign Z = ~(S[0] | S[1] | S[2] | S[3] | S[4] | S[5] | S[6] | S[7]) ;

assign N = S[7];

endmodule

