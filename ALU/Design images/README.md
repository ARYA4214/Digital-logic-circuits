# ALU Circuit Design (RTL Architecture)

## 📌 Overview
This folder contains the **RTL-level circuit design schematic** of a **4-bit Arithmetic Logic Unit (ALU)** implemented using **Verilog HDL**.

The diagram represents the internal architecture generated during RTL elaboration, showing how individual arithmetic and logic blocks are interconnected using multiplexers.

---

## 🧩 Design Description
The ALU is designed using a **modular approach**, where each operation is implemented as a separate functional block.  
The outputs of these blocks are selected using multiplexers based on the `sel[2:0]` control signal.

---

## ⚙️ Functional Blocks Shown
- **Adder (RTL_ADD)** – Performs A + B
- **Subtractor (RTL_SUB)** – Performs A − B
- **AND Gate (RTL_AND)** – Bitwise AND
- **OR Gate (RTL_OR)** – Bitwise OR
- **XOR Gate (RTL_XOR)** – Bitwise XOR
- **Inverter (RTL_INV)** – Bitwise NOT of A
- **Left Shifter (RTL_LSHIFT)** – Logical shift left
- **Right Shifter (RTL_RSHIFT)** – Logical shift right
- **Multiplexers (RTL_MUX)** – Select final output and carry

---

## 🔁 Data Flow Explanation
- Inputs **A[3:0]** and **B[3:0]** are applied to all functional blocks in parallel
- Each block computes its respective operation
- A **4-bit multiplexer** selects the final output `Y[3:0]`
- A separate multiplexer selects the `carry` output for arithmetic operations
- Selection is controlled by **`sel[2:0]`**

---

## 🛠 Design Characteristics
- Fully **combinational logic**
- Parallel operation evaluation
- MUX-based result selection
- RTL-level structural representation

---

## 🧠 Learning Outcomes
- Understanding ALU internal architecture
- RTL elaboration and schematic analysis
- Modular digital design concepts
- Use of multiplexers in datapath selection

---

## 🖼 File Information
- **Image:** RTL schematic of 4-bit ALU
- **Tool:** Xilinx Vivado (RTL Analysis / Elaborated Design)

---

## 👤 Author
**Arya Biswas**  
B.Tech Student | Digital Logic & VLSI Enthusiast
