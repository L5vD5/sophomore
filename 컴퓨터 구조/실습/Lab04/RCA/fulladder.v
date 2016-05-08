module fa(c_out,sum,c_in,a,b);
  output c_out,sum;
  input c_in,a,b;

  /*to do*/
	wire c_in,a,b;
	wire c_out,sum;
	wire d,e,f;

	xor(sum,c_in,a,b);
	and(d,a,b);
	and(e,a,c_in);
	and(f,b,c_in);
	or(c_out,d,e,f);
endmodule
