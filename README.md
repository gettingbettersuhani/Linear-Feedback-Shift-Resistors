Linear Feedback Shift Register (LFSR) – Verilog HDL
📌 Project Overview

This project implements a Linear Feedback Shift Register (LFSR) using Verilog HDL.
An LFSR is a sequential circuit widely used for generating pseudo-random sequences, commonly applied in cryptography, test pattern generation, and digital systems.

The design uses XOR-based feedback logic and a shift register to generate a deterministic but pseudo-random output sequence.

⚙️ Features
Configurable N-bit LFSR design
Generates pseudo-random bit sequences
Uses XOR feedback taps
Fully synchronous design (clock-driven)
Efficient and lightweight RTL implementation
🧠 Design Logic
The LFSR consists of a shift register with feedback
On every clock cycle:
Bits shift in one direction
New input bit is generated using XOR of selected taps
𝑁
𝑒
𝑥
𝑡
_
𝑏
𝑖
𝑡
=
𝑄
[
𝑛
]
⊕
𝑄
[
𝑘
]
⊕
.
.
.
Next_bit=Q[n]⊕Q[k]⊕...
The sequence repeats after a certain number of states depending on tap selection
💡 Technical Insight
Maximum-length sequences (2ⁿ − 1 states) are achieved only with proper tap selection
All-zero state must be avoided, as it results in a locked state
LFSRs are deterministic but exhibit pseudo-random properties, making them useful for testing and scrambling


🧪 Verification
Verified using a testbench with continuous clock input
Observed pseudo-random sequence generation in waveform simulation
Confirmed correct shifting and feedback behavior
🛠 Tools Used
Verilog HDL
Xilinx Vivado (Simulation & Synthesis)


🎯 Learning Outcomes
Understanding of shift registers and feedback systems
Hands-on experience with sequential circuit design
Knowledge of pseudo-random sequence generation
Insight into tap selection and sequence length
🚀 Future Improvements
Implement maximum-length LFSR (MLS)
Add programmable tap selection
Extend to different LFSR configurations (Fibonacci/Galois)
FPGA hardware implementation
