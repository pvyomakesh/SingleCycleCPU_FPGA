`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:16:15 AM
// Design Name: 
// Module Name: Datapath
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


module Datapath(clk, clrn, instr, pc, alu);
    input clk, clrn;
    output [31:0] instr, pc, alu;
    
    wire wmem;
    wire [31:0] datain;
    wire [31:0] dataout;
    scdatamem scdatamem_inst1 (clk, wmem, datain, alu, dataout);
    
    scinstrmem scinstrmem_inst1 (pc, instr);
    
    sccpu sccpu_inst1 (instr, dataout, clrn, clk, pc, alu, datain, wmem);    
endmodule
