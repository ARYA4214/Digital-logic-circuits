# Simulation and RTL Outputs – Full Adder using Two 4:1 Multiplexers

## 📌 Overview
This folder contains the **simulation waveforms** and **RTL schematic diagrams** for the Verilog-based **1-bit Full Adder** implemented using **two 4:1 multiplexers**.

These visual outputs verify the correctness of **Sum** and **Carry** generation for all input combinations and illustrate the synthesized internal hardware structure.

---

## 📂 Included Images

### 1. Simulation Waveform
Shows the behavior of:
- `A`, `B` → Input operand bits  
- `Cin` → Carry input  
- `Sum` → Result output  
- `Cout` → Carry output  

The waveform confirms:
- Correct **binary addition functionality**  
- Proper **Sum and Carry generation** for all 8 input combinations  
- Accurate **combinational response without clock dependency**

---

### 2. RTL Schematic Diagram
Displays the synthesized **register-transfer-level architecture**, including:
- Two instantiated **4:1 multiplexers**
- **Select lines driven by inputs A and B**
- Internal wiring that produces **Sum** and **Carry**
- Proper signal routing between modules

This diagram helps visualize how the Verilog design maps to real digital hardware.

---

### 3. Top-Level Design View
Illustrates the connection of:
- Input signals (`A`, `B`, `Cin`)
- Output signals (`Sum`, `Cout`)
- Instantiated **full adder using MUX module**

---

## 🧪 Purpose of This Folder
These visual results are included to:

- Verify **functional correctness** of the full adder  
- Demonstrate **multiplexer-based combinational logic design**  
- Provide **documentation for academic submission and GitHub reference**  
- Show **successful simulation and RTL synthesis in Vivado**

---

## 🛠 Tools Used
Images were generated using:

- **Xilinx Vivado Simulator**
- **RTL Schematic Viewer**
- Standard **Verilog HDL simulation workflow**

---

## 📎 Note
All screenshots correspond to the verified implementation located in the parent project folder:

```
full_adder_using_two_4_1_mux/
```

---

## 👤 Author
**Arya Biswas**  
B.Tech Electronics Engineering Student  
