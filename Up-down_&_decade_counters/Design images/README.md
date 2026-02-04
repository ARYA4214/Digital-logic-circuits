# Simulation and RTL Design Outputs

## 📌 Overview
This folder contains the generated visual outputs of the **Up/Down Decade Counter** Verilog project, including waveform simulation results and RTL schematic diagrams obtained from the design and verification process.

These images provide confirmation of correct counter operation and help in understanding the internal hardware structure produced after synthesis.

## 📂 Contents
- **Waveform Simulation**  
  Displays clock, reset, select signal, and 4-bit counter output showing:
  - Up counting from 0 to 9  
  - Down counting from 9 to 0  
  - Proper MOD-10 wrap-around behavior  

- **RTL Schematic Diagram**  
  Shows the synthesized register-transfer-level hardware including:
  - Add/Subtract logic  
  - Multiplexers for direction control  
  - Register storage for counter value  
  - Clock and reset connections  

- **Top-Level Design View**  
  Illustrates the connection of input signals (`clk`, `reset`, `sel`) to the counter module.

## 🧪 Purpose
These outputs are included to:

- Verify correct functional behavior of the Verilog design  
- Visualize internal RTL hardware structure  
- Support academic lab reports and project documentation  
- Provide proof of successful simulation and synthesis  

## 🛠 Tools Used
The images in this folder were generated using:

- **Xilinx Vivado Simulator**
- **RTL Schematic Viewer**
- Standard Verilog simulation workflow

## 📎 Note
All screenshots correspond to the same verified version of the **Up/Down Decade Counter** design present in the main source directory of this repository.

---

**Author:** Arya Biswas  
B.Tech Electronics Engineering Student  
