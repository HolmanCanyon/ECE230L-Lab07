module top(
  input [1:0]sw,
  output [1:0]led
);
    
    half_sub half_sub(
      .A(sw[0]),
      .B(sw[1]),
      .Y(led[0]),
      .Borrow(led[1])
        
    );
  
endmodule

