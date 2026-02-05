# 11001 Sequence Detector (Overlapping, Mealy FSM)

## 📌 Overview
This folder contains the Verilog HDL implementation of a **binary sequence detector for pattern 11001** using a **Mealy finite state machine (FSM)** with **overlapping detection** capability.

The detector monitors a serial input stream and produces an output pulse whenever the sequence **11001** is detected.  
Because the design is **overlapping**, previously matched bits are reused to allow faster detection of consecutive patterns.

---

## 🎯 Design Features
- Detects binary sequence **11001**
- Implemented using **Mealy FSM architecture**
- Supports **overlapping sequence detection**
- Uses **active-low asynchronous reset (`rst_n`)**
- Fully synthesizable **Verilog HDL design**
- Suitable for **FPGA implementation and academic learning**

---

## ⚙️ Inputs and Output

### Inputs
- `clk` → System clock signal  
- `rst_n` → Active-low asynchronous reset  
- `x` → Serial binary input stream  

### Output
- `z` → Output becomes **1** for one clock cycle when sequence **11001** is detected  

---

## 🧠 FSM Working Principle

### State Meaning
| State | Description |
|-------|-------------|
| S0 | Initial/reset state |
| S1 | Detected `1` |
| S2 | Detected `11` |
| S3 | Detected `110` |
| S4 | Detected `1100` |

### Detection Logic
- When the FSM is in **S4** and the next input bit is **1**,  
  the complete sequence **11001** is detected and **output `z = 1`**.
- Due to **overlapping behavior**, the FSM transitions to **S1** instead of reset,  
  allowing immediate detection of repeating patterns.

---

## 🧪 Simulation and Verification
The design can be simulated using:

- **Xilinx Vivado**
- **ModelSim**
- **Icarus Verilog with GTKWave**

Simulation verifies:
- Correct FSM state transitions  
- Proper detection of **11001**  
- Single-cycle output pulse generation  
- Overlapping sequence handling
  
---

## 📚 Applications
- Serial data pattern recognition  
- Digital communication receivers  
- Protocol detection circuits  
- FPGA and VLSI sequential logic design practice  

---

## 👤 Author
**Arya Biswas**  
B.Tech Electronics Engineering Student  
