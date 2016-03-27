module mux2to1 (A, X1, X0, X);
  input A;
  input X1;
  input X0;
  output X;
  
  wire t0;
  wire t1;
  wire t2;
  wire t3;
  
  not not00 (t0, A);
  not not01 (t1, t0);
  and and00 (t2, t1, X1);
  and and01 (t3, t0, X0);
  or or00 (X, t2, t3);
  
endmodule
  
