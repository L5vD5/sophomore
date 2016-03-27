module DEC24 (ena, inv, outv);
  input ena;
  input [1:0] inv;
  output [3:0] outv;
  
  wire [1:0] inv;
  wire [3:0] outv;
  
  wire t0, t1;
  
  not not00 (t0,inv[1]);
  not not01 (t1, inv[0]);
  
  and and00 (outv[3], t0, t1, ena);
  and and01 (outv[2], t0, inv[0], ena);
  and and02 (outv[1], inv[1], t1, ena);
  and and03 (outv[0], inv[1], inv[0], ena);

endmodule
