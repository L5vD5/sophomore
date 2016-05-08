`include "fulladder.v"

module RCA (c_out, sum, c_in, a, b);
  input c_in;
  input [15:0] a, b;
  output c_out;
  output [15:0] sum;
  
  wire c[14:0];
  /* to do */
	fa fa00 (c[0],sum[0], c_in, a[0], b[0]);
	fa fa01 (c[1],sum[1], c[0], a[1], b[1]);
	fa fa02 (c[2],sum[2], c[1], a[2], b[2]);
	fa fa03 (c[3],sum[3], c[2], a[3], b[3]);
	fa fa04 (c[4],sum[4], c[3], a[4], b[4]);
	fa fa05 (c[5],sum[5], c[4], a[5], b[5]);
	fa fa06 (c[6],sum[6], c[5], a[6], b[6]);
	fa fa07 (c_out,sum[7], c[6], a[7], b[7]);
	

endmodule
