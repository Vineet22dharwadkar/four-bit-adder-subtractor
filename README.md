# four-bit-adder-subtractor
This project implements a 4-bit Parallel Adder/Subtractor in Verilog using a Ripple Carry Adder (RCA) and logic gates like XOR, AND, and NOT. The design can perform both addition and subtraction based on a mode selection input M.
When M = 0: The circuit performs Addition.
When M = 1: The circuit performs Subtraction by adding the 2's complement of the input B[3:0] to A[3:0].
The project includes the following key modules:
fourbit_AS – This is the top module that connects the inputs and outputs and handles XOR-based inversion for subtraction. It instantiates two 4-bit Ripple Carry Adders (RCA) to perform addition/subtraction operations.
fourbit_RCA – A 4-bit Ripple Carry Adder that takes two 4-bit inputs and a carry-in to produce a 4-bit sum and carry-out.

Features:
Inputs:A
[3:0]: 4-bit input operand
B[3:0]: 4-bit input operand
M: Mode selection (0 for addition, 1 for subtraction)
cin: Carry input for the RCA

Outputs:
S[3:0]: 4-bit sum/difference output
Cout: Carry output

Waveform Verification:
The project was verified using simulation in a Verilog testbench, which generates different test cases for addition and subtraction. The waveform output confirms correct functionality, showing the expected sum/difference and carry-out.

How to Run:
Clone the repository.
Compile the Verilog files using tools like Vivado, ModelSim, or Xilinx ISE.
Run the simulation to verify the waveforms and output.
![Image](https://github.com/user-attachments/assets/b3058407-08bd-4231-9ac5-6f47f3d1cdf4)
![Image](https://github.com/user-attachments/assets/be191475-43ab-4758-a61a-26df96ffcef7)
![Image](https://github.com/user-attachments/assets/0d730df0-d036-4b85-968f-aa4438445bc7)

