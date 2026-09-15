`timescale 1ns / 1ps

module invert7 (
    input  wire [6:0] in,
    output wire [6:0] out
);

    assign out = ~in;

endmodule