# Sequence Detector Designs (Verilog)

## 📌 Overview
This directory contains Verilog HDL implementations of **finite state machine (FSM) based sequence detectors** for different binary patterns.  
Each sequence is implemented using both **overlapping** and **non-overlapping** detection methods to demonstrate fundamental concepts of sequential circuit design in digital electronics.

The designs are suitable for **academic learning, FPGA practice, and FSM verification**.

---

## 🎯 Objectives
- Design **sequence detectors** using Verilog HDL  
- Implement both **overlapping** and **non-overlapping** detection techniques  
- Understand **finite state machine (FSM)** behavior  
- Verify functionality using **testbench simulation and waveforms**

---


Each subfolder contains:
- Verilog **design source code**
- **Testbench** for simulation
- **Waveform or result images** (if available)

---

## 🧠 Concept Summary

### Overlapping Sequence Detector
- Allows reuse of previously detected bits  
- Faster detection for repeating patterns  
- Requires **careful FSM state transitions**

### Non-Overlapping Sequence Detector
- Resets detection after one full sequence match  
- Simpler logic compared to overlapping design  
- Commonly used in **basic digital systems**

---

## 🧪 Simulation
All sequence detectors can be simulated using:

- **Xilinx Vivado**
- **ModelSim**
- **Icarus Verilog with GTKWave**

Simulation verifies:
- Correct sequence recognition  
- Proper FSM state transitions  
- Accurate output pulse generation  

---

## 📚 Applications
- Digital communication receivers  
- Pattern recognition circuits  
- Control systems and protocol detection  
- FPGA and VLSI learning projects  

---

## 👤 Author
**Arya Biswas**  
B.Tech Electronics Engineering Student 
