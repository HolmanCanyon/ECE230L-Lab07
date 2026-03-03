module half_sub(
  input A,B,
  output Y,
  output Carry
);

  assign Y = (~A & B) | (A & ~B);
  assign Carry = ~A & B;

endmodule
