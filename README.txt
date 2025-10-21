# Four-bit Barrel Shifter (Vivado Verilog)

This project implements a **4-bit Barrel Shifter** in **Verilog HDL**, designed and simulated using **Xilinx Vivado**.  
A barrel shifter is a combinational circuit that can shift or rotate data by a specified number of bits in a single operation.

---

## 🧠 Project Overview
A **barrel shifter** can perform multiple-bit shifts in one clock cycle without using sequential logic.  
It’s commonly used in **ALUs**, **processors**, and **digital signal processing** to perform fast shifting and rotation operations.

### Features:
- 4-bit input data
- 2-bit shift control (allows shift by 0–3 positions)
- Supports **left** and **right** shift modes (based on design version)
- Implemented using **multiplexer-based logic**
- Fully synthesizable and verified using a testbench

---

## 📁 Repository Structure
fourbitbarrelshifter-clean/
├── src/ # RTL Verilog source files
│ ├── barrel_shifter.v
│ └── (other design files)
├── tb/ # Testbench files
│ └── barrel_shifter_tb.v
├── constraints/ # XDC constraint files (for FPGA synthesis)
├── scripts/ # project.tcl or Vivado build scripts
├── docs/ # Optional documentation, waveforms, or reports
├── README.md # Project documentation (this file)
├── LICENSE # Project license
└── .gitignore # Ignored Vivado build directories and logs
