`timescale 1ns / 1ps

module up_down_decade_counter_tb;

    reg clk;
    reg reset;
    reg sel;
    wire [3:0] count;

    // Instantiate DUT
    up_down_decade_counter uut (
        .clk(clk),
        .reset(reset),
        .sel(sel),
        .count(count)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        sel = 0;

        #10 reset = 0;

        // Up counting
        sel = 0;
        #100;

        // Down counting
        sel = 1;
        #100;

        // Reset and test again
        reset = 1;
        #10 reset = 0;
        sel = 0;
        #50;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | sel=%b | count=%d", $time, sel, count);
    end

endmodule
