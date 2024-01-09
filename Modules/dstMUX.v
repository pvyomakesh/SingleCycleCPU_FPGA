`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:24:39 AM
// Design Name: 
// Module Name: dstMUX
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


module dstMUX (Ain, Bin, Sel, MUXout);
    input [4:0] Ain, Bin;
    input Sel;
    output reg [4:0] MUXout;
    always @(*)
    begin
    MUXout <= Ain;
    if (Sel == 1'b1)
        begin
        MUXout <= Bin;
        end
    end
endmodule
