`include "adder4bit.v"


module CLA (a, b, cin, s, cout);
  input [15:0] a, b;
  input cin;
  output [15:0] s;
  output cout;
  wire [15:0] a, b;
  wire [15:0] s;
  wire [3:0] c;
  wire [3:0] p, g;
  wire [3:0] c_temp;
  wire P, G;
  
  /* to do */
	adder4bit a1(a[3:0]  , b[3:0]  , cin , s[3:0]  , p[0], g[0], c_temp[0]);
	adder4bit a2(a[7:4]  , b[7:4]  , c[0], s[7:4]  , p[1], g[1], c_temp[1]);
	adder4bit a3(a[11:8] , b[11:8] , c[1], s[11:8] , p[2], g[2], c_temp[2]);
	adder4bit a4(a[15:12], b[15:12], c[2], s[15:12], p[3], g[3], c_temp[3]);

 	carrygu carrygu22(p, g, cin, P, G, c);
	assign cout = c[3];
endmodule
