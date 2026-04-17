# 🚦 Traffic Light Controller using Verilog (FSM Design)

## 📌 Overview

This project implements a **Traffic Light Controller** using a **Finite State Machine (FSM)** in Verilog HDL. The system automatically controls traffic lights (Red, Yellow, Green) using timed state transitions.

It demonstrates key digital design concepts such as:

* Synchronous sequential circuits
* FSM design (Moore machine)
* Verilog HDL modeling
* Simulation and waveform verification

---

## ⚙️ Features

* Three traffic states: **RED, GREEN, YELLOW**
* Automatic cyclic transitions
* Timer-based delay control
* Designed using **3-process FSM approach**
* Fully simulated and verified in waveform viewer

---

## 🧠 FSM Design

### 🔹 States and Timing

| State  | Output    | Duration |
| ------ | --------- | -------- |
| RED    | Red ON    | 5 cycles |
| GREEN  | Green ON  | 5 cycles |
| YELLOW | Yellow ON | 2 cycles |

### 🔹 State Transition Sequence

```
RED → GREEN → YELLOW → RED → ...
```

---

## 🏗️ Project Structure

```
traffic-light-controller/
│
├── traffic_light_controller.v   # Main FSM design
├── tb_traffic_light.v           # Testbench
├── simulation_output.png        # Output waveform
├── schematic.png                # RTL schematic
└── README.md                    # Project documentation
```

---

## 🔌 Inputs & Outputs

### 🔹 Inputs

* `clk`   : Clock signal
* `reset` : Asynchronous reset

### 🔹 Outputs

* `red`    : Red light signal
* `yellow` : Yellow light signal
* `green`  : Green light signal

---

## ⚙️ Working Principle

1. System starts in **RED state** when reset is active
2. After reset is released:

   * RED stays active for fixed time
   * Transitions to GREEN
   * Then to YELLOW
   * Returns back to RED
3. This cycle continues indefinitely

---

## 💻 Simulation
<img width="1619" height="864" alt="Screenshot 2026-04-17 231157" src="https://github.com/user-attachments/assets/783f129a-2c0e-4768-bd3d-5cd046fbf5cb" />


### 🧪 Tools Used

* Xilinx Vivado (Behavioral Simulation)
* ModelSim (optional)

### ▶️ Steps to Run

1. Add design and testbench files
2. Compile the project
3. Run simulation

---

## 📊 Simulation Result

The waveform verifies:

* Correct FSM transitions
* Proper timing delays
* Continuous cyclic behavior

Sequence observed:

```
RED → GREEN → YELLOW → RED → ...
```

---

## 🧩 RTL Schematic

The synthesized RTL schematic shows:
<img width="1582" height="822" alt="image" src="https://github.com/user-attachments/assets/a10795da-d13d-45aa-96ec-3cfd411d704f" />


* State registers (flip-flops)
* Combinational logic for next state
* Output logic using multiplexers

---

## 🧪 Testbench Description

The testbench:

* Generates clock signal
* Applies reset at start
* Simulates system for fixed time
* Helps verify correct output behavior

---

## ✅ Result

The Traffic Light Controller:

* Successfully transitions between all states
* Maintains correct timing for each signal
* Produces expected output waveform

---

## 🎯 Conclusion

This project demonstrates:

* FSM-based digital system design
* Use of Verilog HDL for hardware modeling
* Simulation and verification techniques

It forms a strong foundation for advanced VLSI and FPGA-based designs.

---

## 🚀 Future Improvements

* 4-way traffic light controller
* Pedestrian crossing system
* Real-time clock divider
* FPGA implementation

---

git add simulation_output.png schematic.png
git commit -m "<img width="1066" height="562" alt="Screenshot 2026-04-17 232210" src="https://github.com/user-attachments/assets/ba37a99d-99f6-4249-a456-27dc6f80d8ae" />
"
git push

---

## 👨‍💻 Author

**Arya Biswas**
Electronics Engineering Student

---

## 📜 License

This project is open-source and free for educational use.
