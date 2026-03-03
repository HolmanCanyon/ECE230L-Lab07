module top(
  input [9:0]sw,
  output [13:0]led
);
    
    half_sub half_sub(
      .A(sw[0]),
      .B(sw[1]),
      .Y(led[0]),
      .Borrow(led[1]) 
    );

  twos_compliment twos_compliment(
    .sw(sw[9:2]),
    .led(led[13:6])
  );

  ones_compliment_adder ones_compliment_adder(
    .A(sw[5:2]),
    .B(sw[9:6]),
    .Y(led[5:2])
  );
  
endmodule









