# Non-Overlapping Sequence Detector (Verilog)

## 📌 Overview
This folder contains Verilog HDL implementations of **non-overlapping sequence detectors** using **finite state machine (FSM)** design.  
In non-overlapping detection, once a sequence is detected, the FSM **resets to the initial state**, preventing reuse of previously matched bits.

This approach provides **simpler logic and clear detection boundaries**, making it ideal for **basic digital systems and academic learning**.

---

## 🎯 Objectives
- Design **FSM-based non-overlapping sequence detectors** in Verilog  
- Ensure detection output occurs **only once per complete sequence**  
- Validate behavior using **testbench simulation and waveform analysis**

---

## 🧠 Working Concept
In a non-overlapping detector:

- After detecting the target binary sequence,  
- The FSM **returns to the starting state**,  
- Preventing immediate reuse of previous bits.  

This ensures **distinct and separate detections** for each full sequence occurrence.

---

## 📂 Contents
Each subfolder may include:

- Verilog **design source file**
- **Testbench** for simulation
- **Waveform result images**

---

## 🧪 Simulation Tools
- Xilinx Vivado  
- ModelSim  
- Icarus Verilog with GTKWave  

Simulation confirms correct **non-overlapping detection** and **FSM reset behavior**.

---

## 📚 Applications
- Serial data monitoring  
- Control signal verification  
- Educational FSM design experiments  
- FPGA-based sequential logic projects  

---

## 👤 Author
**Arya Biswas**  
B.Tech Electronics Engineering Student  
