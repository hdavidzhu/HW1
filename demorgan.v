module demorgan
(
  // Single bit units
  input A,
  input B,

  // Output intermediate complemented inputs
  output nA,
  output nB,

  // Single bit output, ~A * ~B
  output nA_and_nB
);

  wire nA;
  wire nB;

  not inverat(nA, A);
  not Binv(nB, B);
  and andgate(nA_and_nB, nA, nB);

endmodule
