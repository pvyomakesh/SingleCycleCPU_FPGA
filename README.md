# Single-Cycle CPU Implementation for FPGA

## Project Overview

This project involves the implementation of a single-cycle CPU using the Xilinx design package for Field-Programmable Gate Arrays (FPGAs). It supports R-type, I-type, and J-type instructions, adhering to the MIPS architecture. The design is partitioned into five stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EXE), Memory (MEM), and Write Back (WB). This modular approach not only simplifies the design but also lays the groundwork for future enhancements like pipelining.

## Features

* **Comprehensive Instruction Set**: Supports R-type, I-type, and J-type instructions, enabling a wide range of operations and functionalities.

* **Five-Stage Datapath**: Implements a single-cycle CPU with five distinct stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EXE), Memory (MEM), and Write Back (WB). This modular approach not only aids in understanding but also prepares the groundwork for potential pipelining.

* **FPGA-Compatible Design**: Designed using the Xilinx design package, making it compatible with FPGA boards for practical implementation and testing.

* **Detailed Control Unit**: Incorporates a comprehensive Control Unit that manages the operation of the CPU based on the instruction type and other factors.

* **Testbench Included**: Comes with a testbench module for simulation, enabling easy verification and debugging of the CPU design.

## Prerequisites

* Xilinx Design Suite
* FPGA Board 
* Basic understanding of Verilog and FPGA programming

## Installation

1. Clone the repository to your local machine using git clone [repository URL].
2. Open the project using Xilinx software.
3. Configure your FPGA board settings as per the requirements of the project.
4. Compile and upload the design to your FPGA.

## Usage

* **Project File**: The project contains a single file that includes all modules and the testbench. To simulate the project, simply run this file in your FPGA simulation environment.

* **Memory Initialization**: The instruction and data memory are pre-initialized with specific values provided for educational purposes. Users should modify these values according to their requirements or use cases.

* **Simulation**: To run a simulation, load the project file into your Xilinx design environment and execute the testbench. Monitor the outputs for pc, alu, and other relevant signals to verify the functionality.

* **Modifications and Enhancements**: Feel free to modify or enhance the CPU design. Possible enhancements include implementing pipelining to convert the design into a multi-cycle CPU or extending the instruction set.

## Architecture
The SingleCycleCPU_FPGA project is structured into several Verilog modules that together form a single-cycle CPU. The primary modules and their functions are as follows:

### [`Datapath Module`](Modules\Datapath.v)

* **Function**: Serves as the backbone of the CPU, interconnecting various components.
* **Components**:
- `scdatamem`: Manages the data memory operations including reading and writing.
- `scinstrmem`: Handles the instruction memory, fetching instructions based on the program counter (PC).
- `sccpu`: Acts as the central unit, orchestrating the CPU's operations.

### [`Data Memory Module`](Modules\scdatamem.v) (scdatamem)

* **Purpose**: Simulates the data memory (RAM) of the CPU.
* **Key Features**:
- Write and read operations based on the address and write enable signals.
- Initialized with predefined values for simulation purposes.

### [`Instruction Memory Module`](Modules\scinstrmem.v) (scinstrmem)

* **Function**: Simulates the instruction memory of the CPU.
* **Implementation**:
- Stores a predefined set of instructions for the CPU to execute.
- Outputs instructions based on the current PC value.

### [`CPU Module`](Modules\sccpu.v) (sccpu)
* **Role**: Central processing unit that controls the execution of instructions.
* **Components**:
- [`PC`](Modules\PC.v): Manages the program counter, updating it each clock cycle.
- [`PCadder`](Modules\PCadder.v): Responsible for incrementing the PC.
- [`ControlUnit`](Modules\ControlUnit.v): Decodes instructions and generates appropriate control signals.
- [`dstMUX`](Modules\dstMUX.v), [`MUX2to1`](Modules\MUX2to1.v): Multiplexers for routing data based on control signals.
- [`signextend`](Modules\signextend.v): Extends immediate values for certain instruction types.
- [`regfile`](Modules\regfile.v): Represents the register file of the CPU.
- [`ALU`](Modules\ALU.v): Performs arithmetic and logical operations.
- [`PCMux`](Modules\PCMux.v): Controls the PC's value based on various inputs, supporting jump and branch instructions.

## Flow of Operation
* **Instruction Fetch**: The scinstrmem module fetches the current instruction based on the PC.
* **Instruction Decode**: The ControlUnit decodes the instruction, * generating control signals for other components.
* **Execution**: The ALU performs computations, while other components route data as per the instruction's needs.
* **Memory Operations**: The scdatamem module handles any load/store operations.
* **Write Back**: Results are written back to the regfile or used to update the PC.

## Scalability and Enhancement
The current design is optimized for a single-cycle operation, with the potential for enhancements like pipelining. Adding pipeline registers between stages can convert this design into a pipelined processor, improving throughput and performance.

## Authors
Vyomakesh Puduru - Initial Work - [`pvyomakesh`](https://github.com/pvyomakesh)

## License 
No License 

