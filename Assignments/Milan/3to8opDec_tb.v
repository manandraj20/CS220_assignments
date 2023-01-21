`timescale 1ns / 1ps
`include "3to8opDec.v"
module decoder3to8_tb();
    reg [2:0] opcode;
    wire [7:0] control;

    decoder3to8 DUT (opcode, control);

    initial begin
        // test cases
        opcode = 3'b000;
        #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b001;
        #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b010;
        #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b011;
        #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b100;
        #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b101;
        #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b110;
        #5 #5 $display("opcode: %b, control: %b", opcode, control);
        opcode = 3'b111;
        #5 $display("opcode: %b, control: %b", opcode, control);
        // test cases ends
        $finish;
    end
endmodule
