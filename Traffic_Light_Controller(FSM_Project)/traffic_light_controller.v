module traffic_light_controller (
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

// State Declaration
parameter RED = 2'b00,
          GREEN = 2'b01,
          YELLOW = 2'b10;

reg [1:0] current_state, next_state;
reg [3:0] timer;  // Counter for timing

// 1️⃣ State Register (Sequential Block)
always @(posedge clk or posedge reset) begin
    if (reset)
        current_state <= RED;
    else
        current_state <= next_state;
end

// Timer Counter
always @(posedge clk or posedge reset) begin
    if (reset)
        timer <= 0;
    else begin
        if (current_state != next_state)
            timer <= 0;
        else
            timer <= timer + 1;
    end
end

// 2️⃣ Next State Logic
always @(*) begin
    case (current_state)
        RED: begin
            if (timer == 5)
                next_state = GREEN;
            else
                next_state = RED;
        end
        
        GREEN: begin
            if (timer == 5)
                next_state = YELLOW;
            else
                next_state = GREEN;
        end
        
        YELLOW: begin
            if (timer == 2)
                next_state = RED;
            else
                next_state = YELLOW;
        end
        
        default: next_state = RED;
    endcase
end

// 3️⃣ Output Logic
always @(*) begin
    case (current_state)
        RED: begin
            red = 1;
            yellow = 0;
            green = 0;
        end
        
        GREEN: begin
            red = 0;
            yellow = 0;
            green = 1;
        end
        
        YELLOW: begin
            red = 0;
            yellow = 1;
            green = 0;
        end
    endcase
end

endmodule