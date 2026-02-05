`timescale 1ns / 1ps

module tb_seq_det;

    reg clk;
    reg rst_n;
    reg x;
    wire z;

    // Instantiate UUT
    seq_det_11001 uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .x(x), 
        .z(z)
    );

    // Clock Generation
    always #5 clk = ~clk;

    // Sequence Feeder Task
    task send_bit;
        input bit_val;
        begin
            @(negedge clk); // Change input on negative edge for stability
            x = bit_val;
            $display("Time=%0t | Input=%b | State=%b | Output=%b", $time, x, uut.current_state, z);
        end
    endtask

    initial begin
        // Initialize
        clk = 0;
        rst_n = 0;
        x = 0;
        
        #20;
        rst_n = 1; // Release reset

        // Test Sequence: 0 -> 11001 -> 1001 -> 11001
        // Sequence to send: 0 1 1 0 0 1 1 0 0 1 0
        
        send_bit(0); 
        send_bit(1); // S1
        send_bit(1); // S2
        send_bit(0); // S3
        send_bit(0); // S4
        send_bit(1); // DETECTED! (Output should be 1) -> State becomes S1
        
        // Check Overlapping functionality
        // Current logical state is S1 (because of the last 1)
        send_bit(1); // S2
        send_bit(0); // S3
        send_bit(0); // S4
        send_bit(1); // DETECTED! (Output should be 1)

        send_bit(0);
        
        #20;
        $finish;
    end

endmodule