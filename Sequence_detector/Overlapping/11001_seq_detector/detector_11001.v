module seq_det_11001 (
    input wire clk,
    input wire rst_n,    // Active low asynchronous reset
    input wire x,        // Serial input
    output reg z         // Output: 1 if sequence detected
);

    // State Encoding
    parameter S0 = 3'b000; // Reset
    parameter S1 = 3'b001; // Seen 1
    parameter S2 = 3'b010; // Seen 11
    parameter S3 = 3'b011; // Seen 110
    parameter S4 = 3'b100; // Seen 1100

    reg [2:0] current_state, next_state;

    // 1. Sequential Logic: State Registers
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // 2. Combinational Logic: Next State Logic
    always @(*) begin
        case (current_state)
            S0: next_state = (x) ? S1 : S0;
            S1: next_state = (x) ? S2 : S0;
            S2: next_state = (x) ? S2 : S3;
            S3: next_state = (x) ? S1 : S4;
            S4: next_state = (x) ? S1 : S0; // If x=1, go to S1 (overlap)
            default: next_state = S0;
        endcase
    end

    // 3. Combinational Logic: Output Logic (Mealy)
    // Output depends on State AND Input
    always @(*) begin
        if (current_state == S4 && x == 1)
            z = 1;
        else
            z = 0;
    end

endmodule