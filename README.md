# Verilog
Verilog is a hardware description language used to model electronic systems. Verilog (sometimes called "Verilog HDL") supports the design, verification, and execution of analog, digital, and mixed-signal circuits at different levels. The designers of the Verilog language wanted the language to have a syntax close to the C programming language. Thus, they aimed to enable engineers who are prone to this language to use the language easily. The language is case sensitive, and the keywords of the basic control flow such as “if” and “while” are similar to C. Verilog differs from C in several fundamental ways. Verilog uses Begin/End instead of curly braces to define a block code.

![Verilog](https://i.ytimg.com/vi/aeMQJEfGsPY/maxresdefault.jpg)</br>
Verilog does not execute its steps exactly sequentially like traditional programming languages. Verilog design maintains a hierarchy between modules. Modules are defined as a set of input, output, and bidirectional ports. A module contains a list of registers and cables. Simultaneous and sequential statements describe the behavior of the module; It defines it by the relationship between ports, cables, and registers. Consecutive statements are put in a begin/end block and executed sequentially with the block. All concurrent statements and begin/end blocks are executed in parallel. A module may also contain one or more instances of another module, indicating a sub-behavior. If the modules in the design contain only synthesizable expressions, the netlist containing the basic components and connections of this design to be realized in hardware can be synthesized by software. This netlist can be used to describe an integrated circuit (eg ASIC or FPGA).

</br>**Xilinx Vivado**
Vivado Design Suite is a software suite produced by Xilinx for synthesis and analysis of hardware description language (HDL) designs, superseding Xilinx ISE with additional features for system on a chip development and high-level synthesis.Vivado represents a ground-up rewrite and re-thinking of the entire design flow (compared to ISE).</br>
The Vivado High-Level Synthesis compiler enables C, C++ and SystemC programs to be directly targeted into Xilinx devices without the need to manually create RTL.Vivado HLS is widely reviewed to increase developer productivity, and is confirmed to support C++ classes, templates, functions and operator overloading.

![Vivado](https://upload.wikimedia.org/wikipedia/en/a/ab/XilinxVivado_2014.jpg)</br>

*I will use verilog language to do digital design. In this process, I will use Cem Ünsalan's book "Digital System Design with FPGA: Implementation Using Verilog and VHDL". [Cem Unsalan](https://www.amazon.com.tr/Digital-System-Design-FPGA-Implementation/dp/1259837904)*
