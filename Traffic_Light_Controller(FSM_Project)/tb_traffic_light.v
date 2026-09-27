`timescale 1ns/1ps

module tb_traffic_light;

reg clk;
reg reset;
wire red, yellow, green;

// Instantiate DUT (Device Under Test)
traffic_light_controller uut (
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

// Clock Generation (10ns period)
always #5 clk = ~clk;

initial begin
    // Initialize
    clk = 0;
    reset = 1;

    // Apply reset
    #10 reset = 0;

    // Run simulation
    #200 $stop;
end

endmodule