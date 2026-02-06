// 4:1 Multiplexer Module
module mux4to1 (
    input I0, I1, I2, I3,   // Data inputs
    input S0, S1,            // Select lines
    output Y                 // Output
);
    assign Y = (S1 == 0 && S0 == 0) ? I0 :
               (S1 == 0 && S0 == 1) ? I1 :
               (S1 == 1 && S0 == 0) ? I2 :
                                      I3;
endmodule


// Full Adder using two 4:1 MUX
module full_adder_mux (
    input A, B, Cin,
    output Sum, Cout
);

    // SUM MUX connections
    // AB = 00 → Cin
    // AB = 01 → ~Cin
    // AB = 10 → ~Cin
    // AB = 11 → Cin
    mux4to1 MUX_SUM (
        .I0(Cin),
        .I1(~Cin),
        .I2(~Cin),
        .I3(Cin),
        .S0(B),
        .S1(A),
        .Y(Sum)
    );

    // CARRY MUX connections
    // AB = 00 → 0
    // AB = 01 → Cin
    // AB = 10 → Cin
    // AB = 11 → 1
    mux4to1 MUX_CARRY (
        .I0(1'b0),
        .I1(Cin),
        .I2(Cin),
        .I3(1'b1),
        .S0(B),
        .S1(A),
        .Y(Cout)
    );

endmodule
