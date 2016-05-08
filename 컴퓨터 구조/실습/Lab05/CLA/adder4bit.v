`include "adder1bit.v"
`include "carrygu.v"

module adder4bit(a, b, cin, sum, P, G, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] sum;
  output P, G, cout;
  
  /* to do */
	wire [3:0] p,g;
	wire [4:1] c;

	
	adder1bit a00(a[0], b[0], cin , sum[0], p[0], g[0]);
	adder1bit a01(a[1], b[1], c[1], sum[1], p[1], g[1]);
	adder1bit a02(a[2], b[2], c[2], sum[2], p[2], g[2]);
	adder1bit a03(a[3], b[3], c[3], sum[3], p[3], g[3]);
	
	carrygu carrygu0(p, g, cin, P, G, c);	
	assign cout = c[4];
endmodule