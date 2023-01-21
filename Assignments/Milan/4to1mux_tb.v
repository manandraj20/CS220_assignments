`include "4to1mux.v"
`timescale 1ns / 1ps
module mux_tb;
    // input lines
    reg [31:0] in0;
    reg [31:0] in1;
    reg [31:0] in2;
    reg [31:0] in3;

    // selection line
    reg [1:0] sel;

    // output line
    wire [31:0] out;

    // Instantiate the design under test
    mux4_1 dut (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Initialize input values
        in0 = 32'h00000001;
        in1 = 32'h00000002;
        in2 = 32'h00000004;
        in3 = 32'h00000008;

        // Test all possible combinations of sel
        for (sel = 0; sel < 4; sel = sel + 1) begin
            // Print input and output values
            $display("sel = %b, in0 = %h, in1 = %h, in2 = %h, in3 = %h, out = %h", sel, in0, in1, in2, in3, out);
            #10;
        end
        $stop;
    end
   
   

endmodule
