# VHDL-Processor-Components
# VHDL Processor Components  This repository contains a collection of basic VHDL modules that are commonly used in simple processor or digital system designs. Each module is tested using a corresponding testbench for simulation.  ## 📦 Repository Structure

---

## 🔧 Components

### ✅ ALU (Arithmetic Logic Unit)
- 8-bit ALU supporting basic operations like addition and subtraction.
- Inputs: `reg_A`, `reg_B`, `op`, `enable`
- Outputs: `result_out`, `carry_out`
- Includes a testbench: `alu_tb.vhdl`

### ✅ Program Counter (4-bit)
- 4-bit up-counter with synchronous reset and enable.
- Useful for instruction address control in simple CPU designs.
- Includes a testbench: `pc_tb.vhdl`

### ✅ 8-bit Register
- Loadable register with output enable and asynchronous reset.
- Outputs stored data to bus and ALU.
- Includes a testbench: `reg_tb.vhdl`

---

## 🚀 How to Simulate

You can simulate these components using **GHDL**, **ModelSim**, or **Vivado**. Example with GHDL:

```bash
ghdl -a alu.vhdl alu_tb.vhdl
ghdl -e alu_tb
ghdl -r alu_tb --vcd=alu_tb.vcd
