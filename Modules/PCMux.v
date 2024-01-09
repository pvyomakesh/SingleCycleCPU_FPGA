`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:31:46 AM
// Design Name: 
// Module Name: PCMux
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


module PCMux (in0, in1, in2, in3, sel, out);
    input [31:0] in0, in1, in2, in3;
    input [1:0] sel;
    output reg [31:0] out;
    always @(*)
    begin
    out <= in0;
    if (sel == 2'b01)
        begin
        out <= in1;
        end
    else if (sel == 2'b10)
        begin
        out <= in2;
        end
    else if (sel == 2'b11)
        begin
        out <= in3;
        end
    end
endmodule

