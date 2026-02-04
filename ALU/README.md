# 4-Bit ALU using Verilog HDL

## 📌 Overview
This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.  
The ALU performs arithmetic and logical operations based on a **3-bit select input** and is designed using **combinational logic**.

The design is suitable for **digital logic learning, FPGA basics, and RTL design practice**.

---

## 🛠 Tools & Technologies
- Verilog HDL
- Xilinx Vivado
- RTL Simulation
- Git & GitHub

---

## 📂 Module Description

### Module Name
`alu_4bit`

### Inputs
- `A [3:0]` – 4-bit input operand A  
- `B [3:0]` – 4-bit input operand B  
- `sel [2:0]` – Select line to choose the operation  

### Outputs
- `Y [3:0]` – 4-bit ALU result  
- `carry` – Carry output for arithmetic operations  

---

## ⚙️ ALU Operations

| Select (sel) | Operation | Description |
|-------------|-----------|-------------|
| `000` | `A + B` | Addition |
| `001` | `A - B` | Subtraction |
| `010` | `A & B` | Bitwise AND |
| `011` | `A \| B` | Bitwise OR |
| `100` | `A ^ B` | Bitwise XOR |
| `101` | `~A` | Bitwise NOT of A |
| `110` | `B << 1` | Logical Shift Left |
| `111` | `B >> 1` | Logical Shift Right |

---

## 🔍 Design Details
- Implemented using an `always @(*)` block
- Fully **combinational design**
- Carry output is generated only for arithmetic operations
- Uses `case` statement for operation selection

---

## ▶️ How to Simulate
1. Open **Xilinx Vivado**
2. Create a new RTL project
3. Add `alu_4bit.v` to design sources
4. Add a testbench (if available)
5. Run Behavioral Simulation

---

## 🎯 Learning Outcomes
- Understanding ALU architecture
- Writing combinational Verilog code
- Using case statements in RTL design
- Working with arithmetic and logic operations
- Vivado simulation workflow

---

## 👤 Author
**Arya Biswas**  
B.Tech Student | Electronics
Interested in Digital Logic Design & VLSI
