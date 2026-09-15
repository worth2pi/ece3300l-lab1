`timescale 1ns / 1ps

module tb_lab1;

    reg [3:0] bin_in;
    wire [6:0] leds_out;

    bin_to_leds uut (
        .bin_in(bin_in),
        .leds_out(leds_out)
    );

    integer i;

    initial begin
        $display("Starting Testbench...");
        bin_in = 4'b0000;
        
        for (i = 0; i < 16; i = i + 1) begin
            bin_in = i;
            #10;
            $display("Time=%0t | bin_in=%b (%0d) | leds_out=%b",$time, bin_in, bin_in, leds_out);
        end

        #10;
        $display("Testbench Completed Successfully.");
        $finish;
    end

endmodule