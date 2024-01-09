`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:25:17 AM
// Design Name: 
// Module Name: f
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


module f (jal, dst, dsel, wn);
    input jal;
    input [4:0] dst;
    output reg dsel;
    output reg [4:0] wn;
    always @(*)
    begin
        if (jal) begin
            dsel = 1;
            wn = 5'b11111;
        end
        else
        begin
            dsel = 0;
            wn = dst;
        end
    end
endmodule
