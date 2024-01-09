`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:27:50 AM
// Design Name: 
// Module Name: signextend
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


module signextend (in16, sel, out32);
    input [15:0] in16;
    input sel;
    output reg [31:0] out32;
    always @(*)
    begin
    if (sel == 1'b1)
    out32 <= {{16{in16[15]}}, in16};
    else
    begin
    out32 <= {16'b0, in16};
    end
    end
endmodule
