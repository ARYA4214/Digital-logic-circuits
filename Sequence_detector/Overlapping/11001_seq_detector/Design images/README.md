# Simulation and RTL Outputs – 11001 Sequence Detector

## 📌 Overview
This folder contains the **simulation waveforms** and **RTL schematic diagrams** for the Verilog-based **11001 overlapping sequence detector** implemented using a **Mealy finite state machine (FSM)**.

These images provide visual verification of correct sequence detection and illustrate the internal hardware structure generated after synthesis.

---

## 📂 Included Images

### 1. Simulation Waveform
Shows the behavior of:
- `clk` → Clock signal  
- `rst_n` → Active-low reset  
- `x` → Serial input stream  
- `z` → Output detection pulse  

The waveform confirms:
- Correct recognition of the **11001** sequence  
- **Single-clock output pulse** when the sequence is detected  
- Proper **overlapping detection behavior**

---

### 2. RTL Schematic Diagram
Displays the synthesized **register-transfer-level architecture**, including:
- FSM **state register**
- **Next-state combinational logic**
- **Output logic (Mealy type)**
- Clock and reset connections

This diagram helps visualize how the Verilog code maps to actual digital hardware.

---

### 3. Top-Level Design View
Illustrates the connection of:
- Input signals (`clk`, `rst_n`, `x`)
- Output signal (`z`)
- Instantiated **sequence detector module**

---

## 🧪 Purpose of This Folder
These visual results are included to:

- Verify **functional correctness** of the 11001 detector  
- Demonstrate **FSM state transitions and detection timing**  
- Provide **documentation support** for academic reports and GitHub projects  
- Show **successful simulation and synthesis** of the Verilog design  

---

## 🛠 Tools Used
Images were generated using:

- **Xilinx Vivado Simulator**
- **RTL Schematic Viewer**
- Standard **Verilog simulation workflow**

---

## 📎 Note
All screenshots correspond to the verified implementation located in the parent folder:

```
11001_seq_detector/
```

---

## 👤 Author
**Arya Biswas**  
B.Tech Electronics Engineering Student  
