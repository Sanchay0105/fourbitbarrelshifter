`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:32:42
// Design Name: 
// Module Name: barreltest
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


module barreltestmodule();
    reg [3:0] in;  
    reg [1:0] sel;
    wire [3:0] out;

    
    fourbitbarrelshifter b1(in[3], in[2], in[1], in[0], sel, out);
    
    initial begin
        in = 4'b0001;
        sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 in = 4'b1010; sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 $finish;
    end

    initial begin
        $monitor("Time = %0t | in = %b | sel = %b | out = %b", $time, in, sel, out);
    end
endmodule

