Single-Cycle CPU Implementation for FPGA

Project Overview

This project involves the implementation of a single-cycle CPU using the Xilinx design package for Field-Programmable Gate Arrays (FPGAs). It supports R-type, I-type, and J-type instructions, adhering to the MIPS architecture. The design is partitioned into five stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EXE), Memory (MEM), and Write Back (WB). This modular approach not only simplifies the design but also lays the groundwork for future enhancements like pipelining.

Features

Comprehensive Instruction Set: Supports R-type, I-type, and J-type instructions, enabling a wide range of operations and functionalities.

Five-Stage Datapath: Implements a single-cycle CPU with five distinct stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EXE), Memory (MEM), and Write Back (WB). This modular approach not only aids in understanding but also prepares the groundwork for potential pipelining.

FPGA-Compatible Design: Designed using the Xilinx design package, making it compatible with FPGA boards for practical implementation and testing.

Detailed Control Unit: Incorporates a comprehensive Control Unit that manages the operation of the CPU based on the instruction type and other factors.

Testbench Included: Comes with a testbench module for simulation, enabling easy verification and debugging of the CPU design.

Prerequisites

Xilinx Design Suite
FPGA Board 
Basic understanding of Verilog and FPGA programming

Installation

Clone the repository to your local machine using git clone [repository URL].
Open the project using Xilinx software.
Configure your FPGA board settings as per the requirements of the project.
Compile and upload the design to your FPGA.

Usage

Project File: The project contains a single file that includes all modules and the testbench. To simulate the project, simply run this file in your FPGA simulation environment.

Memory Initialization: The instruction and data memory are pre-initialized with specific values provided for educational purposes. Users should modify these values according to their requirements or use cases.

Simulation: To run a simulation, load the project file into your Xilinx design environment and execute the testbench. Monitor the outputs for pc, alu, and other relevant signals to verify the functionality.

Modifications and Enhancements: Feel free to modify or enhance the CPU design. Possible enhancements include implementing pipelining to convert the design into a multi-cycle CPU or extending the instruction set.

Architecture

Overview
This single-cycle CPU design is partitioned into five stages, each responsible for a specific part of the instruction cycle. The design follows a MIPS-like architecture, tailored for FPGA implementation.

Stages

Instruction Fetch (IF): Fetches the next instruction from memory. Includes logic for program counter (PC) update and instruction memory access.

Instruction Decode (ID): Decodes the fetched instruction and generates control signals. It includes the Control Unit, register file access, and immediate value sign-extension.

Execute (EXE): Performs arithmetic and logical operations. This stage consists of the ALU and necessary multiplexers for operand selection.

Memory (MEM): Handles data memory access for load and store operations. Integrates a data memory module for read/write operations based on the instruction type.

Write Back (WB): Writes the results back to the register file. This stage involves selecting between ALU results and memory data to be written back.

Control Flow
The Control Unit plays a critical role in determining the operations performed in each stage based on the opcode and function bits of the instruction. It generates signals for conditional branching, register write operations, ALU operation selection, and memory access control.

Scalability and Enhancement
The current design is optimized for a single-cycle operation, with the potential for enhancements like pipelining. Adding pipeline registers between stages can convert this design into a pipelined processor, improving throughput and performance.

Authors
Vyomakesh Puduru - Initial Work - [pvyomakesh](https://github.com/pvyomakesh)

License
This project is licensed under the MIT License - see the LICENSE file for details

