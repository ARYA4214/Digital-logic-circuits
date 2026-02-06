module tb_full_adder_mux;

    reg A, B, Cin;
    wire Sum, Cout;

    full_adder_mux DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("A B Cin | Sum Cout");
        $display("-------------------");

        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, Cin} = i;
            #10;
            $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);
        end

        $finish;
    end

endmodule
