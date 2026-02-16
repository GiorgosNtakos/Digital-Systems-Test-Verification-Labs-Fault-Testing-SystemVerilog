# Digital Systems Testing & Verification Labs (Synopsys DFT Flow)

> 🇬🇷 Ελληνική έκδοση: [README_GR.md](./README_GR.md)


This repository contains laboratory exercises for the course  
**“Special Topics in Digital Systems Design”**, focusing on testing and verification of digital circuits using industrial EDA tools.

The labs follow a complete Design-For-Test (DFT) flow using Synopsys tools, including synthesis, scan insertion, Automatic Test Pattern Generation (ATPG), and fault simulation.

---

## 📚 Course Overview

The course covers methodologies for ensuring correct operation of digital systems in the presence of faults.

Main topics include:

- Fault models (stuck-at faults)
- Design-For-Testability (DFT)
- Scan chain insertion
- Automatic Test Pattern Generation (ATPG)
- Fault simulation
- Test coverage analysis
- Verification of digital designs

---

## 🛠️ Tools Used

The laboratory exercises are based on Synopsys EDA tools:

- **Design Compiler** — logic synthesis and scan insertion  
- **TetraMax** — ATPG and fault simulation  
- Verilog HDL  
- Standard Cell Libraries  

Typical workflow:

1. Synthesize the design
2. Insert scan chains (DFT)
3. Generate test protocols
4. Perform ATPG
5. Run fault simulation
6. Analyze test coverage

---

## 🧪 Laboratory Exercises

### Lab 1 — Fault Simulation of Synthesized Circuits

This lab focuses on evaluating test effectiveness on combinational circuits.

Key tasks include:

- Synthesis of benchmark circuits using Design Compiler
- Fault simulation using TetraMax
- Use of predefined test sets
- Fault collapsing analysis
- Evaluation of undetected faults
- Impact of excluding specific cells from the fault model
- Test coverage analysis using pseudorandom test vectors

Experiments include analysis of ISCAS benchmark circuits such as `c1355.v` and `c7552.v`.

---

### Lab 2 — Automatic Test Pattern Generation (ATPG)

This lab focuses on generating test patterns for detecting faults.

Key tasks include:

- Deterministic ATPG for sequential and combinational circuits
- Design Rule Checking (DRC) analysis
- Fault classification
- Test coverage evaluation
- Comparison between deterministic and pseudorandom testing
- Investigation of Random Pattern Resistant faults
- Generation of additional test vectors for undetected faults
- Fault simulation of generated patterns

Benchmark circuits include `s1423.v`, `c3540.v`, and `c7552.v`.

---

## 🎯 Learning Objectives

After completing these labs, students should be able to:

- Apply Design-For-Test techniques to digital circuits
- Perform scan-based testing
- Generate test vectors using ATPG
- Evaluate fault coverage
- Analyze undetected and redundant faults
- Use industrial EDA tools for testing workflows

---

## 🏫 Institution

Department of Computer Engineering & Informatics  
University of Patras — Polytechnic School

---

## 📄 License

This repository is intended for educational purposes.
