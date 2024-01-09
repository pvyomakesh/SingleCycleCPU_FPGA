`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:26:30 AM
// Design Name: 
// Module Name: MUX2to1
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


module MUX2to1 (ina, inb, sel, out);
    input [31:0] ina, inb;
    input sel;
    output reg [31:0] out;
    always @(*)
    begin 
    
    if (sel == 1)
        begin
        out <= inb;
        end
    else     
        out <= ina;
    end 
endmodule
