`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:31:30
// Design Name: 
// Module Name: fourbitbarrelshifter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fourbitbarrelshifter(a, b, c, d, sel, out);
  input a, b, c, d;
  input [1:0] sel;
  output reg [3:0] out;  // Correct bit order

  always @(*) begin  // Correct sensitivity list
    case (sel)
      2'b00: out = {a, b, c, d};  // No shift
      2'b01: out = {d, a, b, c};  // 1-bit left rotate
      2'b10: out = {c, d, a, b};  // 2-bit left rotate
      2'b11: out = {b, c, d, a};  // 3-bit left rotate
      default: out = 4'bzzzz;      // High impedance state
    endcase
  end
endmodule

