`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:29:36 AM
// Design Name: 
// Module Name: ALU
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


module ALU(INA, INB, aluc, ALUresult, zero);
    input [31:0] INA, INB;
    input [3:0] aluc;
    output reg [31:0] ALUresult;
    output reg zero;
     
    always @(*)
    begin
    case (aluc)
    4'bx001: ALUresult = INA&INB;//and
    4'bx101: ALUresult = INA|INB;//or
    4'bx000: ALUresult = INA+INB;//add
    4'bx100: ALUresult = INA-INB;//sub
    4'bx010: ALUresult = INA^INB;//xor
    4'b0011: ALUresult = INB << INA;//sll
    4'b0111: ALUresult = INB >> INA;//srl
    4'b1111: ALUresult = $signed(INB)>>>INA;//sra
    default: ALUresult = 0;
    endcase
    if (INA == INB)
    begin
        zero = 1;
    end
    else
    begin
        zero = 0;
    end
    end
endmodule