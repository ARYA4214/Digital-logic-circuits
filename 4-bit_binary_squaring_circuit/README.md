# 🚀 Project Showcase: 4-bit Binary Squaring Circuit

## 📌 Overview  
This project presents the **design and implementation of a 4-bit binary squaring circuit** using fundamental digital logic gates.  
The circuit accepts a **4-bit binary input (A3, A2, A1, A0)** and produces an **8-bit binary output (Y7–Y0)** representing the **square of the input number**.

The implementation was successfully built and tested on a **breadboard**, demonstrating practical understanding of **digital logic design, Boolean expressions, and combinational circuit realization**.

---

## 🎯 Objectives  
- Design a combinational circuit to compute the **square of a 4-bit binary number**  
- Implement the logic using **basic gates (AND, OR, NOT, XOR, etc.)**  
- Verify correctness through **hardware testing on breadboard**  
- Strengthen concepts of **digital electronics and logic simplification**

---

## 🔧 Components Used  
- **3 × AND gates**  
- **1 × NOT gate**  
- **1 × OR gate**  
- **1 × XOR gate**  
- **Resistors & LEDs** for output indication  
- **Breadboard & regulated power supply**

---

## ⚙️ Simplified Boolean Expressions  

```
Y0 = A0  
Y1 = 0  
Y2 = A1 · A0′  
Y3 = A0 · (A1 ⊕ A2)  
Y4 = A0 · (A2 ⊕ A3) + A2 · A0′ · A1′  
Y5 = A0 · A2 · A3 + A1 · (A2 ⊕ A3)  
Y6 = A3 · (A1 + A2′)  
Y7 = A3 · A2
```

---

## 📊 Input–Output Truth Mapping  

| Decimal Input | Binary Input | Square (Decimal) | Binary Output |
|--------------|--------------|------------------|---------------|
| 0  | 0000 | 0   | 00000000 |
| 1  | 0001 | 1   | 00000001 |
| 2  | 0010 | 4   | 00000100 |
| 3  | 0011 | 9   | 00001001 |
| 4  | 0100 | 16  | 00010000 |
| 5  | 0101 | 25  | 00011001 |
| 6  | 0110 | 36  | 00100100 |
| 7  | 0111 | 49  | 00110001 |
| 8  | 1000 | 64  | 01000000 |
| 9  | 1001 | 81  | 01010001 |
| 10 | 1010 | 100 | 01100100 |
| 11 | 1011 | 121 | 01111001 |
| 12 | 1100 | 144 | 10010000 |
| 13 | 1101 | 169 | 10101001 |
| 14 | 1110 | 196 | 11000100 |
| 15 | 1111 | 225 | 11100001 |

---

## 📷 Project Demonstration  
Circuit diagrams, hardware setup images, and output verification results are included in this repository for clear understanding of the implementation.

---

<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/5c4e420e-447b-4839-a124-d864667f14b2" />
<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/abda4357-4a8f-45c9-92c8-189b271f174b" />
<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/9be321a3-942a-4fd6-a387-7791563c2fe0" />
<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/b5019716-9705-4b12-aa58-b2da04f439e3" />

---

## 🧠 Learning Outcomes  
- Practical knowledge of **combinational circuit design**  
- Experience in **hardware implementation of digital systems**  
- Improved understanding of **binary arithmetic and logic optimization**  
- Hands-on exposure to **real-time circuit debugging**

---

## 🔗 Author  
**Arya Biswas**  
B.Tech Student | Electronics Engineering  
