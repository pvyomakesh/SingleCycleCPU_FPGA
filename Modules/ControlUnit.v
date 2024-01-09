`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 11:22:37 AM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit (op, func, z, wreg, regrt, jal, m2reg, shift, aluimm, sext, aluc, wmem, pcsrc);
    input [5:0] op;
    input [5:0] func;
    input z;
    output reg wreg, regrt, jal, m2reg, shift, aluimm, sext, wmem;
    output reg [3:0] aluc;
    output reg [1:0] pcsrc;
    always @(*)
    begin
        case(op)
            6'b000000 : begin
            case(func)
                6'b100000 : begin//add
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'bx000;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b100010 : begin//sub
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'bx100;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b100100 : begin//and
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'bx001;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b100101 : begin//or
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'bx101;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b100110 : begin//xor
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'bx010;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b000000 : begin//sll
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b1;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'b0011;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b000010 : begin//srl
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b1;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'b0111;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b000011 : begin //sra
                wreg = 1'b1;
                regrt = 1'b0;
                jal = 1'b0;
                m2reg = 1'b0;
                shift = 1'b1;
                aluimm = 1'b0;
                sext = 1'bx;
                aluc = 4'b1111;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
                6'b001000: begin //jr
                wreg = 1'b0;
                regrt = 1'bx;
                jal = 1'bx;
                m2reg = 1'bx;
                shift = 1'bx;
                aluimm = 1'bx;
                sext = 1'bx;
                aluc = 4'bxxxx;
                wmem = 1'b0;
                pcsrc = 2'b10;
                end
            endcase
            end
            
            6'b001000: begin //addi
            wreg = 1'b1;
            regrt = 1'b1;
            jal = 1'b0;
            m2reg = 1'b0;
            shift = 1'b0;
            aluimm = 1'b1;
            sext = 1'b1;
            aluc = 4'bx000;
            wmem = 1'b0;
            pcsrc = 2'b00;
            end
            6'b001100: begin //andi
            wreg = 1'b1;
            regrt = 1'b1;
            jal = 1'b0;
            m2reg = 1'b0;
            shift = 1'b0;
            aluimm = 1'b1;
            sext = 1'b0;
            aluc = 4'bx001;
            wmem = 1'b0;
            pcsrc = 2'b00;
            end
            6'b001101: begin //ori
            wreg = 1'b1;
            regrt = 1'b1;
            jal = 1'b0;
            m2reg = 1'b0;
            shift = 1'b0;
            aluimm = 1'b1;
            sext = 1'b0;
            aluc = 4'bx101;
            wmem = 1'b0;
            pcsrc = 2'b00;
            end
            6'b001110: begin //xori
            wreg = 1'b1;
            regrt = 1'b1;
            jal = 1'b0;
            m2reg = 1'b0;
            shift = 1'b0;
            aluimm = 1'b1;
            sext = 1'b1;
            aluc = 4'bx010;
            wmem = 1'b0;
            pcsrc = 2'b00;
            end
            6'b100011: begin //lw
            wreg = 1'b1;
            regrt = 1'b1;
            jal = 1'b0;
            m2reg = 1'b1;
            shift = 1'b0;
            aluimm = 1'b1;
            sext = 1'b1;
            aluc = 4'bx000;
            wmem = 1'b0;
            pcsrc = 2'b00;
            end
            6'b101011: begin //sw
            wreg = 1'b0;
            regrt = 1'bx;
            jal = 1'bx;
            m2reg = 1'bx;
            shift = 1'b0;
            aluimm = 1'b1;
            sext = 1'b1;
            aluc = 4'bx000;
            wmem = 1'b1;
            pcsrc = 2'b00;
            end
            6'b000100: begin //beq
            wreg = 1'b0;
            regrt = 1'bx;
            jal = 1'bx;
            m2reg = 1'bx;
            shift = 1'b0;
            aluimm = 1'b0;
            sext = 1'b1;
            aluc = 4'bx010;
            wmem = 1'b0;
            pcsrc = 2'b00;
            if (z == 1)
                begin
                wreg = 1'b0;
                regrt = 1'bx;
                jal = 1'bx;
                m2reg = 1'bx;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'b1;
                aluc = 4'bx010;
                wmem = 1'b0;
                pcsrc = 2'b01;
                end
            end
            6'b000101: begin //bne
            if (z == 0) begin
            wreg = 1'b0;
            regrt = 1'bx;
            jal = 1'bx;
            m2reg = 1'bx;
            shift = 1'b0;
            aluimm = 1'b0;
            sext = 1'b1;
            aluc = 4'bx010;
            wmem = 1'b0;
            pcsrc = 2'b01;
            end
            if (z == 1) begin
                wreg = 1'b0;
                regrt = 1'bx;
                jal = 1'bx;
                m2reg = 1'bx;
                shift = 1'b0;
                aluimm = 1'b0;
                sext = 1'b1;
                aluc = 4'bx010;
                wmem = 1'b0;
                pcsrc = 2'b00;
                end
            end
            6'b001111: begin //lui
            wreg = 1'b1;
            regrt = 1'b1;
            jal = 1'b0;
            m2reg = 1'b0;
            shift = 1'bx;
            aluimm = 1'b1;
            sext = 1'bx;
            aluc = 4'bx110;
            wmem = 1'b0;
            pcsrc = 2'b00;
            end
            6'b000010: begin //j
            wreg = 1'b0;
            regrt = 1'bx;
            jal = 1'bx;
            m2reg = 1'bx;
            shift = 1'bx;
            aluimm = 1'bx;
            sext = 1'bx;
            aluc = 4'bxxxx;
            wmem = 1'b0;
            pcsrc = 2'b11;
            end
            6'b000011: begin //jal
            wreg = 1'b1;
            regrt = 1'bx;
            jal = 1'b1;
            m2reg = 1'bx;
            shift = 1'bx;
            aluimm = 1'bx;
            sext = 1'bx;
            aluc = 4'bxxxx;
            wmem = 1'b0;
            pcsrc = 2'b11;
            end
        endcase
    end
endmodule
