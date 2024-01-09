`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:20:09 AM
// Design Name: 
// Module Name: sccpu
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


module sccpu (instr, mem, clrn, clk, pc, alu, data, wmem);
    input [31:0] instr, mem;
    input clrn, clk;
    output [31:0] pc, alu, data;
    output wmem;
    
    wire [31:0] new_pc;
    PC PC_inst1 (new_pc, clk, pc);
    wire [31:0] p4;
    PCadder PCadder_inst1 (pc, p4);
    
    wire z, wreg, regrt, jal, m2reg, shift, aluimm, sext;
    wire [3:0] aluc;
    wire [1:0] pcsrc;
    ControlUnit ControlUnit_inst1 (instr[31:26], instr[5:0], z, wreg, regrt, jal, m2reg, shift, aluimm, sext, aluc, wmem, pcsrc);
    
    wire [4:0] dstout;
    dstMUX dstMUX_inst1 (instr[15:11], instr[20:16], regrt, dstout);
    
    wire dsel;
    wire [4:0] wn;
    f f_inst1 (jal, dstout, dsel, wn);
    
    wire [31:0] dmux;
    wire [31:0] dreg;
    MUX2to1 MUX2to1_inst2 (dmux, p4, dsel, dreg);
    
    wire [31:0] imm;
    signextend signextend_inst1 (instr[15:0], sext, imm);
    
    wire [31:0] qa, qb;
    regfile regfile_inst1 (instr[25:21], instr[20:16], dreg, wn, wreg, clk, clrn, qa, qb);
    
    wire [31:0] alu_a;
    MUX2to1 MUX2to1_inst3 (qa, {{27{1'b0}}, instr[10:6]}, shift, alu_a);
    
    wire [31:0] alu_b;
    MUX2to1 MUX2to1_inst4 (qb, imm, aluimm, alu_b);
    
    ALU ALU_inst1 (alu_a, alu_b, aluc, alu, z);
    
    wire [31:0] p1;
    adder adder_inst1 (p4, {imm[29:0], 2'b00}, p1);
    
    PCMux PCMux_inst1 (p4, p1, qa, {p4[31:28], {instr[25:0], 2'b00}}, pcsrc, new_pc);
    
    MUX2to1 MUX2to1_inst5 (alu, mem, m2reg, dmux);
endmodule

