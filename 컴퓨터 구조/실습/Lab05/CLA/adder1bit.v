	module adder1bit (a, b, c, s, p, g);
  input a, b, c;
  output s, p, g;
  
  /* to do */
	xor(s,a,b,c);
	and(g,a,b);
	xor(p,a,b);

endmodule
