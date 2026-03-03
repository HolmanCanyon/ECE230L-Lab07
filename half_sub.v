module half_sub(
  input A,B,
  output Y,
  output Borrow
);

  assign Y = (~A & B) | (A & ~B);
  assign Borrow = ~A & B;

endmodule

