# Digital Systems Testing Labs — ATPG & DFT Workflows

> 🇬🇷 Ελληνική έκδοση: [README_GR.md](./README_GR.md)
> 

This repository contains laboratory exercises for the course  
**“Special Topics in Digital Systems Design”**, focusing on testing and verification of digital circuits using both academic and industrial tools.

The labs cover two distinct testing workflows:

- Classical ATPG and fault simulation using Atalanta & HOPE
- Industrial Design-For-Test (DFT) flow using Synopsys tools

---

## 📚 Course Topics

- Fault models (stuck-at faults)
- Automatic Test Pattern Generation (ATPG)
- Deterministic and pseudorandom testing
- Fault simulation
- Test coverage analysis
- Scan-based testing methodologies
- Verification of digital circuits

---

## 🧪 Laboratory Exercises

### Lab 1 — ATPG & Fault Simulation with Atalanta and HOPE

This lab focuses on classical testing techniques for combinational circuits using benchmark circuits in BENCH format.

Tools used:

- **Atalanta** — ATPG for combinational circuits  
- **HOPE** — Parallel fault simulator  

Key tasks include:

- Generation of test vectors for stuck-at faults
- Multiple test patterns per fault
- Random Pattern Testing (RPT)
- FAN algorithm configuration
- Fault simulation of generated patterns
- Identification of undetected and redundant faults
- Analysis of circuit responses under faults

Benchmark circuits such as `c880o.bench`, `s9234.bench`, and `c1355o.bench` are used.

---

### Lab 2 — Synopsys DFT Flow (Design Compiler & TetraMax)

This lab introduces an industrial Design-For-Test workflow.

Tools used:

- **Design Compiler (DC)** — synthesis and scan insertion  
- **TetraMax (TMax)** — ATPG and fault simulation  

Key tasks include:

- Logic synthesis of digital circuits
- Scan chain insertion (full-scan methodology)
- Creation of test protocols
- Deterministic ATPG for combinational and sequential circuits
- Design Rule Checking (DRC)
- Fault simulation using generated or predefined test sets
- Test coverage analysis
- Generation of additional patterns for undetected faults

Benchmark circuits include `c1355.v`, `c7552.v`, `s1423.v`, and `c3540.v`.

---

## 🛠️ Tools & Technologies

- Atalanta ATPG Tool
- HOPE Fault Simulator
- Synopsys Design Compiler
- Synopsys TetraMax
- Verilog HDL
- ISCAS Benchmark Circuits
- BENCH Format Circuits

---

## 🎯 Learning Objectives

After completing these labs, students should be able to:

- Understand classical fault models
- Generate effective test patterns
- Perform fault simulation
- Evaluate test coverage
- Apply scan-based testing techniques
- Use industrial EDA tools for DFT workflows

---

## 🏫 Institution

Department of Computer Engineering & Informatics  
University of Patras — Polytechnic School

---

## 📄 License

This repository is intended for educational purposes.


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
