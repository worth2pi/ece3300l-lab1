`timescale 1ns / 1ps

module bin_to_leds (
    input  wire [3:0] bin_in,
    output wire [6:0] leds_out,
    output wire [7:0] AN         // Added 8-bit anode control bus
);

    wire [6:0] active_high_seg;

    // Enable only the rightmost digit (AN[0] = 0 is active-LOW, turn off AN[7:1])
    assign AN = 8'b1111_1110;

    // Instantiate 7-segment decoder
    seven_seg_out decoder_inst (
        .bin(bin_in),
        .seg(active_high_seg)
    );

    // Instantiate inverter for active-LOW LED displays
    invert7 inverter_inst (
        .in(active_high_seg),
        .out(leds_out)
    );

endmodule