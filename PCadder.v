`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:22:05 AM
// Design Name: 
// Module Name: PCadder
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


module PCadder (PC, P4);
    input [31:0] PC;
    output reg [31:0] P4;
    always @(*)
    begin
        P4 <= PC + 4;
    end
endmodule