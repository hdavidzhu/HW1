module demorgan
(
  // Single bit units
  input A,
  input B,

  // Output intermediate complemented inputs
  output nA,
  output nB,

  output not_A_and_B, // ~(A * B)
  output nA_or_nB, // ~A + ~B
  output not_A_or_B, // ~(A + B)
  output nA_and_nB // Single bit output, ~A * ~B
);

  wire nA;
  wire nB;
  wire A_and_B;
  wire A_or_B;

  not (nA, A);
  not (nB, B);
  and (A_and_B, A, B);
  or (A_or_B, A, B);

  not (not_A_and_B, A_and_B);
  or (nA_or_nB, nA, nB);
  not (not_A_or_B, A_or_B);
  and (nA_and_nB, nA, nB);
endmodule
