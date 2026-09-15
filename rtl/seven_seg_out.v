`timescale 1ns / 1ps

module seven_seg_out (
    input  wire [3:0] bin,
    output reg  [6:0] seg
);

    always @(*) begin
        case (bin)
            4'h0: seg = 7'b111_1110; // 0
            4'h1: seg = 7'b011_0000; // 1
            4'h2: seg = 7'b110_1101; // 2
            4'h3: seg = 7'b111_1001; // 3
            4'h4: seg = 7'b011_0011; // 4
            4'h5: seg = 7'b101_1011; // 5
            4'h6: seg = 7'b101_1111; // 6
            4'h7: seg = 7'b111_0000; // 7
            4'h8: seg = 7'b111_1111; // 8
            4'h9: seg = 7'b111_1011; // 9
            4'hA: seg = 7'b111_0111; // A
            4'hB: seg = 7'b001_1111; // b
            4'hC: seg = 7'b100_1110; // C
            4'hD: seg = 7'b011_1101; // d
            4'hE: seg = 7'b100_1111; // E
            4'hF: seg = 7'b100_0111; // F
            default: seg = 7'b000_0000;
        endcase
    end

endmodule