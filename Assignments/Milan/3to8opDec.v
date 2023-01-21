module decoder3to8(input [2:0] opcode, output reg [7:0] control);
   always @(*) begin
      case (opcode)
         3'b000: control = 8'b0000_0000;
         3'b001: control = 8'b0000_0001;
         3'b010: control = 8'b0000_0010;
         3'b011: control = 8'b0000_0100;
         3'b100: control = 8'b0000_1000;
         3'b101: control = 8'b0001_0000;
         3'b110: control = 8'b0010_0000;
         3'b111: control = 8'b0100_0000;
         default: control = 8'bx;
      endcase
   end
endmodule
