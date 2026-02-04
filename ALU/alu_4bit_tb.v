`timescale 1ns / 1ps

module alu_4bit_tb;

    // Testbench signals
    reg  [3:0] A, B;
    reg  [2:0] sel;
    wire [3:0] Y;
    wire carry;

    // Instantiate the ALU
    alu_4bit uut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y),
        .carry(carry)
    );

    initial begin
        // Monitor values
        $monitor("Time=%0t | sel=%b | A=%b | B=%b | Y=%b | carry=%b",
                  $time, sel, A, B, Y, carry);

        // Test vectors
        A = 4'b0101; B = 4'b0011;

        sel = 3'b000; #10;   // Addition
        sel = 3'b001; #10;   // Subtraction
        sel = 3'b010; #10;   // AND
        sel = 3'b011; #10;   // OR
        sel = 3'b100; #10;   // XOR
        sel = 3'b101; #10;   // NOT A
        sel = 3'b110; #10;   // Shift Left B
        sel = 3'b111; #10;   // Shift Right B

        // Change inputs
        A = 4'b1100; B = 4'b0010;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $finish;
    end

endmodule
