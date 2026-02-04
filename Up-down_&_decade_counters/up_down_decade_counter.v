module up_down_decade_counter (
    input  wire clk,
    input  wire reset,
    input  wire sel,        // 0 = Up, 1 = Down
    output reg  [3:0] count
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 4'd0;
        end
        else begin
            if (sel == 1'b0) begin
                // Up counter (0 to 9)
                if (count == 4'd9)
                    count <= 4'd0;
                else
                    count <= count + 1'b1;
            end
            else begin
                // Down counter (9 to 0)
                if (count == 4'd0)
                    count <= 4'd9;
                else
                    count <= count - 1'b1;
            end
        end
    end

endmodule
