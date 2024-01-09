`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:20:57 AM
// Design Name: 
// Module Name: PC
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


module PC (newpc1, clk, pc1);
    input [31:0] newpc1;
    input clk;
    output reg [31:0] pc1;
    always @(posedge clk)
    begin
    pc1 <= newpc1;    
    end
    initial
    begin
    pc1 <= 32'h00000000;
    end
endmodule
