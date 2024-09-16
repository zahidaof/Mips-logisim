MIPS Processor Implementation in Logisim Evo
Overview
This project demonstrates the implementation of a 32-bit MIPS processor using Logisim Evolution. The project is designed to help beginners understand how a processor works, with a focus on logical design and basic MIPS instructions. The project includes two versions of the MIPS processor: a single-cycle version and a pipelined version.

Features
Single-Cycle MIPS Processor: A basic implementation that executes one instruction per clock cycle.
Pipelined MIPS Processor: An advanced version that uses pipelining to improve performance by executing multiple instructions simultaneously.
Modulus Calculator Program: A program that calculates the quotient and remainder of two user-input numbers and displays the results.
Instruction Set: Supports basic MIPS instructions including add, sub, and, or, addi, andi, ori, li, j, bne, and more
Project Structure
Single-Cycle MIPS Processor: A simple, clean implementation that is easy to understand and modify.
Pipelined MIPS Processor: A more complex implementation that includes pipeline stages and hazard handling.
Getting Started
Prerequisites
Logisim Evolution: Download and install from Logisim Evolution.
Running the Project

Open the .circ files in Logisim Evolution.
Load the program into the instruction memory(if not loadded).
Run the simulation to see the processor in action.
Single-Cycle MIPS Processor
Description
The single-cycle MIPS processor executes one instruction per clock cycle. This version is perfect for beginners to understand the basic working of a processor.

Features
Basic Instructions: Supports add, sub, and, or, addi, andi, ori, li.
Control Flow: Includes j (jump), bne (branch if not equal).
Modulus Calculator Program
This program allows the user to input two numbers and calculates the quotient and remainder. The results are displayed on the screen.

Pipelined MIPS Processor
Description
The pipelined MIPS processor improves performance by executing multiple instructions simultaneously. This version includes five pipeline stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory Access (MEM), and Write Back (WB).

Features
Pipeline Stages: Includes all five stages of a typical MIPS pipeline.
Hazard Handling: Implements basic hazard detection and forwarding to handle data hazards.
Advanced Instructions: Supports the same instructions as the single-cycle version, with additional support for pipelining.
Modulus Calculator Program
Similar to the single-cycle version, this program calculates the quotient and remainder of two user-input numbers and displays the results.

Using the Design for Your Own Programs
You can easily adapt this MIPS processor design to run your own programs. Simply modify the instruction memory to include your custom instructions. The processor supports a variety of basic MIPS instructions, making it versatile for different types of programs. Whether you’re implementing arithmetic operations, logical operations, or control flow instructions, this design provides a solid foundation for experimenting and learning





Conclusion
This project is designed to help beginners learn about processor design and MIPS architecture. With a clean single-cycle implementation and a more advanced pipelined version, users can explore different aspects of processor design and understand the trade-offs involved.
