module ones_compliment_adder (
  input [3:0] A, [3:0] B,
  output [3:0] Y
);
  //wires for first addition
  wire [3:0] fa;
  //wires for first carry
  wire [2:0] c;
  //wires for second carry
  wire [2:0] sc;
  //wire for carry around
  wire around;

  //first adder set
  full_adder adder0(
    .A(A[0]), 
    .B(B[0]),
    .Cin(1'b0),
    .Cout(c[0]),
    .Y(fa[0])
  );

  full_adder adder1(
    .A(A[1]), 
    .B(B[1]),
    .Cin(c[0]),
    .Cout(c[1]),
    .Y(fa[1])
  );

  full_adder adder2(
    .A(A[2]), 
    .B(B[2]),
    .Cin(c[1]),
    .Cout(c[2]),
    .Y(fa[2])
  );

  full_adder adder3(
    .A(A[3]), 
    .B(B[3]),
    .Cin(c[2]),
    .Cout(around),
    .Y(fa[3])
  );

  //second adder set so we don't loop.
  full_adder sadder0(
    .A(fa[0]), 
    .B(1'b0),
    .Cin(around),
    .Cout(sc[0]),
    .Y(Y[0])
  );

  full_adder sadder1(
    .A(fa[1]), 
    .B(1'b0),
    .Cin(sc[0]),
    .Cout(sc[1]),
    .Y(Y[1])
  );

  full_adder sadder2(
    .A(fa[2]), 
    .B(1'b0),
    .Cin(sc[1]),
    .Cout(sc[2]),
    .Y(Y[2])
  );

  full_adder sadder3(
    .A(fa[3]), 
    .B(1'b0),
    .Cin(sc[2]),
    .Y(Y[3])
  );

  

endmodule;

