# Overlapping Sequence Detector (Verilog)

## 📌 Overview
This folder contains Verilog HDL implementations of **overlapping sequence detectors** designed using **finite state machine (FSM)** concepts.  
In overlapping detection, previously matched bits are reused to allow faster and continuous recognition of repeating binary patterns.

These designs are useful for understanding **advanced sequential circuit behavior** and are commonly applied in **digital communication and pattern recognition systems**.

---

## 🎯 Objectives
- Design **FSM-based overlapping sequence detectors** in Verilog  
- Detect repeating binary sequences without resetting fully  
- Verify correct operation using **testbench simulation and waveforms**

---

## 🧠 Working Concept
In an overlapping detector:

- After a valid sequence is detected,  
- The FSM **does not return to the initial state completely**.  
- Instead, it moves to a state that preserves **useful previously matched bits**,  
  enabling **immediate detection of the next sequence**.

This results in **faster and more efficient detection** compared to non-overlapping designs.

---

## 📂 Contents
Each subfolder may include:

- Verilog **design source file**
- **Testbench** for simulation
- **Waveform output** or result images

---

## 🧪 Simulation Tools
- Xilinx Vivado  
- ModelSim  
- Icarus Verilog with GTKWave  

Simulation verifies correct **overlapping detection behavior** and **FSM state transitions**.

---

## 📚 Applications
- Digital communication receivers  
- Data stream pattern detection  
- High-speed control logic  
- FPGA and VLSI sequential circuit learning  

---

## 👤 Author
**Arya Biswas**  
B.Tech Electronics Engineering Student  
