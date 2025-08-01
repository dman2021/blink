`default_nettype none

module clk_blink (
    input  wire clk_25mhz,
    output wire [7:0] led
);

    reg [23:0] counter = 0;

    always @(posedge clk_25mhz) begin
        counter <= counter + 1;
    end

    assign led = counter[23:16];  // Slow blink on all 8 LEDs

endmodule
