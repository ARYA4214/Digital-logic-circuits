Up/Down Decade Counter
📌 Overview

This repository contains the Verilog HDL design and simulation of an Up/Down Decade (MOD-10) Counter. The counter operates between 0 and 9 and changes its counting direction based on a select control signal, providing a simple and efficient digital counter design suitable for academic and FPGA learning purposes.

🎯 Objective

Design an Up/Down Decade counter using Verilog HDL

Control counting direction using a select input signal

Implement MOD-10 wrap-around logic

Verify functionality using a testbench and waveform simulation

🔧 Counter Operation
Select (sel)	Operation
0	Up Counter (0 → 9 → 0)
1	Down Counter (9 → 0 → 9)
⚙️ Module Inputs and Output

Inputs

clk → Clock signal

reset → Asynchronous active-high reset

sel → Counter direction select

Output

count[3:0] → 4-bit counter value (range 0–9)

🧠 Working Principle

When the reset signal is asserted, the counter initializes to 0.
On each positive edge of the clock, the counter updates based on the select signal:

If sel = 0, the counter increments until it reaches 9, then wraps back to 0.

If sel = 1, the counter decrements until it reaches 0, then wraps back to 9.

This ensures proper decade (MOD-10) counting behavior in both directions.

📂 Project Structure
Up-Down-Decade-Counter/
│
├── src/
│   └── up_down_decade_counter.v
│
├── testbench/
│   └── counter_tb.v
│
├── simulation/
│   └── waveform.png
│
└── README.md

🧪 Simulation

The design can be simulated using:

Xilinx Vivado

ModelSim

Icarus Verilog with GTKWave

The testbench should generate a clock signal, apply reset, toggle the select input between Up and Down modes, and verify the counter output using waveform observation.

📚 Applications

Digital clocks and timers

Frequency division circuits

Sequential control systems

FPGA and digital electronics laboratory experiments

👤 Author

Arya Biswas
B.Tech Electronics Engineering Student
