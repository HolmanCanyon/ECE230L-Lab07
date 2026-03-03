module twos_compliment(
    input  [7:0] A,
    output [7:0] Y
);
    wire [7:0] num;
    assign num = A[7:0];

    //invert input wires
    wire [7:0] inverted;
    assign inverted = ~num;

    //define results and carry wires
    wire [7:0] result;
    wire c0, c1, c2, c3, c4, c5, c6, c7;

    //twos complement flips all bits and adds 1
    //to acheive this, add each inverted bit individually with 0. The first bit has a carry of 1 initially.
    full_adder fa0 (.A(inverted[0]), .B(1'b0), .Cin(1'b1), .Y(result[0]), .Cout(c0));
    full_adder fa1 (.A(inverted[1]), .B(1'b0), .Cin(c0),   .Y(result[1]), .Cout(c1));
    full_adder fa2 (.A(inverted[2]), .B(1'b0), .Cin(c1),   .Y(result[2]), .Cout(c2));
    full_adder fa3 (.A(inverted[3]), .B(1'b0), .Cin(c2),   .Y(result[3]), .Cout(c3));
    full_adder fa4 (.A(inverted[4]), .B(1'b0), .Cin(c3),   .Y(result[4]), .Cout(c4));
    full_adder fa5 (.A(inverted[5]), .B(1'b0), .Cin(c4),   .Y(result[5]), .Cout(c5));
    full_adder fa6 (.A(inverted[6]), .B(1'b0), .Cin(c5),   .Y(result[6]), .Cout(c6));
    full_adder fa7 (.A(inverted[7]), .B(1'b0), .Cin(c6),   .Y(result[7]), .Cout(c7));

    //assign leds to results
    assign Y[6]  = result[0];
    assign Y[7]  = result[1];
    assign Y[8]  = result[2];
    assign Y[9]  = result[3];
    assign Y[10] = result[4];
    assign Y[11] = result[5];
    assign Y[12] = result[6];
    assign Y[13] = result[7];

endmodule




