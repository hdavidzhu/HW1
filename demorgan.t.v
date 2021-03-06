`include "demorgan.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B; // Primary test inputs
  wire nA, nB, nA_and_nB; // Test ouptuts

  demorgan dut(A, B, nA, nB, not_A_and_B, nA_or_nB, not_A_or_B, nA_and_nB);  // Module to be tested

  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | ~(AB) | ~A + ~B | ~(A + B) | ~A~B"); // Prints header for truth table

    A = 0; B = 0; #1 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |     %b |       %b |        %b |    %b", A,B, nA, nB, not_A_and_B, nA_or_nB, not_A_or_B, nA_and_nB);
    A = 0; B = 1; #1 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |     %b |       %b |        %b |    %b", A,B, nA, nB, not_A_and_B, nA_or_nB, not_A_or_B, nA_and_nB);
    A = 1; B = 0; #1
    $display("%b %b |  %b  %b |     %b |       %b |        %b |    %b", A,B, nA, nB, not_A_and_B, nA_or_nB, not_A_or_B, nA_and_nB);
    A = 1; B = 1; #1
    $display("%b %b |  %b  %b |     %b |       %b |        %b |    %b", A,B, nA, nB, not_A_and_B, nA_or_nB, not_A_or_B, nA_and_nB);
  end
endmodule
