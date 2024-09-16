# MIPS Processor Implementation in Logisim Evolution

Welcome to the MIPS Processor Implementation project! This repository demonstrates the design and functionality of a 32-bit MIPS processor using Logisim Evolution. It includes both a single-cycle processor and a pipelined processor to cater to different learning needs.

## Overview

The project is structured to help beginners understand processor design and basic MIPS instruction execution. It features:

- **Single-Cycle MIPS Processor**: Executes one instruction per clock cycle, ideal for learning fundamental concepts.
- **Pipelined MIPS Processor**: Utilizes pipelining to improve performance by allowing simultaneous execution of multiple instructions.
- **Modulus Calculator Program**: A sample program to calculate and display the quotient and remainder of two numbers.

## Features

### Single-Cycle MIPS Processor

- **Basic Instructions**: Supports `add`, `sub`, `and`, `or`, `addi`, `andi`, `ori`, `li`.
- **Control Flow**: Includes `j` (jump), `bne` (branch if not equal).

### Pipelined MIPS Processor

- **Pipeline Stages**: Implements five stages—Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory Access (MEM), Write Back (WB).
- **Hazard Handling**: Includes basic hazard detection and forwarding for managing data hazards.
- **Advanced Instructions**: Supports the same instructions as the single-cycle version, optimized for pipelining.

## Getting Started

### Prerequisites

- **Logisim Evolution**: Download and install Logisim Evolution from [Logisim Evolution]([http://www.cburch.com/logisim/](https://github.com/logisim-evolution/logisim-evolution)).

### Running the Project

1. Open the `.circ` files in Logisim Evolution.
2. Load your program into the instruction memory (if not already loaded).
3. Run the simulation to see the processor in action.

## Modulus Calculator Program

Both processor versions come with a modulus calculator program, which:

1. Allows user input for two numbers.
2. Calculates the quotient and remainder.
3. Displays the results on the screen.

## Customization

You can adapt the MIPS processor design to run your own programs by modifying the instruction memory. The processor supports a range of basic MIPS instructions, making it versatile for experimenting with various types of programs, including arithmetic operations, logical operations, and control flow instructions.

## Conclusion

This project serves as a comprehensive learning tool for understanding processor design and MIPS architecture. With a straightforward single-cycle implementation and a more complex pipelined version, it provides valuable insights into processor design and the trade-offs involved in optimizing performance.

Feel free to explore, modify, and extend the design to enhance your understanding of processor systems.

