# A 4-week Research Internship on VSDSquadron Mini RISC-V Dev Board

BOARD SPECIFICATIONS:

| Tech specs   |   |    |
|------------|------------|------------|
| *Board* | Name     | VSDSquadron Mini    |
|      | SKU    | VSDSQM    |
| *Microcontroller*    | CH32V003F4U6 chip with 32-bit RISC-V core based on RV32EC instruction set    |     |
| *USB connector* | USB 2.0 Type-C    |     |
| *Pins*     | Built-in LED Pin     | 1X onboard user led (PD6)     |
|      | Digital I/O pins     | 15     |
|      | Analog I/O pins     | 10-bit ADC, PD0-PD7, PA1, PA2, PC4     |
|      | PWM pins     | 14X     |
|      | External interrupts     | 	8 external interrupt edge detectors, but it only maps one external interrupt to 18 I/O ports     |
| *Communication*     | USART     | 	1x, PD6(RX), PD5(TX)     |
|      | I2C     | 1x, PC1(SDA), PC2(SCL)    |
|      | SPI     | 1x, PC5(SCK), PC1(NSS), PC6(MOSI), PC7(MISO)     |
|      | Programmer/debugger     | Onboard RISC-V programmer/debugger, USB to TTL serial port support     |
| *Power*     | I/O voltage     | 3.3 V    |
|      | Input voltage (nominal)     | 5 V    |
|      | Source Current per I/O Pin    | 8 mA     |
|      | Sink Current per I/O Pin     | 8 mA     |
| *Clock speed*     | Processor    | 24 MHz     |
| *Memory*     | SRAM     | 2kb onchip volatile sram,16kb external program memory     |
   

This repo is intended to document the weekly progress.

### The first online meet was held on 16th of Feb 2024 @6PM

<details>
    <summary> TASK 1 </summary>
 
1) install Yosys 

2) install iverilog 

3) install gtkwave

### CLONING RISC-V GNU TOOLCHAIN

# To install git 
``` sudo apt install git-all ``` 

 make sure to install the dependencies
 
![WhatsApp Image 2024-02-20 at 2 37 02 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/f72df2a4-c82e-4041-8b6e-69a7d2d7cbd8)





### INSTALLING YOSYS, IVERILOG & GTKWAVE.

### 1.YOSYS


 ```git clone https://github.com/YosysHQ/yosys.git ```

``` cd yosys ```

``` sudo apt install make ```

![WhatsApp Image 2024-02-20 at 2 36 46 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/7f6ca441-8a12-4aba-a5a5-66cbc7e3a845)



 ``` sudo apt-get install build-essential clang bison flex \libreadline-dev gawk tcl-dev libffi-dev git \ graphviz xdot pkg-config python3 libboost-system-dev\libboost-python-dev libboost-filesystem-dev zlib1g-dev ```

![WhatsApp Image 2024-02-20 at 2 37 11 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/9cd2b8c4-faec-4759-a7e5-de0c0e4eee64)

``` make config-gcc ```

![WhatsApp Image 2024-02-20 at 2 37 20 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/b36b12d0-5b6a-4cf9-8471-efd4d1671b98)

``` make ```

![WhatsApp Image 2024-02-20 at 2 37 25 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/20a30bd8-17b7-481f-acdc-62d5198decca)

``` sudo make install ```

![WhatsApp Image 2024-02-20 at 2 37 30 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/f0db7459-26af-4f0a-81bc-6d2ed12a5ac2)



### 2.iVerilog
installing iVerilog

``` sudo apt update```

![WhatsApp Image 2024-02-20 at 2 37 46 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/ebeeebeb-debd-4ecd-acc0-fa39bc2e0055)

``` sudo apt-get install iverilog ```

![WhatsApp Image 2024-02-20 at 2 37 37 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/edf36c2a-0d7a-4fb4-ada3-4b32f5b7058b)


### 3.GTkWave
installing GTkWave

 ``` sudo apt-get install gtkwave ```
 
![WhatsApp Image 2024-02-20 at 2 37 53 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/06693ed1-0fad-4d1e-a6bd-e986fcf4767e)


</details>

### The Second online meet was held on 20th of Feb 2024 @6PM

<details>
    <summary> TASK 2 </summary>

### To identify Input ports, input waveforms, output ports and output waveforms of the design.

### Universal Shift Register:
A register that can store the data and /shifts the data towards the right and left along with the parallel load capability is known as a universal shift register. It can be used to perform input/output operations in both serial and parallel modes. Unidirectional shift registers and bidirectional shift registers are combined together to get the design of the universal shift register. It is also known as a parallel-in-parallel-out shift register or shift register with the parallel load.

Universal shift registers are capable of performing 3 operations as listed below.

1.Parallel load operation – stores the data in parallel as well as the data in parallel

2.Shift left operation – stores the data and transfers the data shifting towards left in the serial path

3.Shift right operation – stores the data and transfers the data by shifting towards right in the serial path.


### *Column of I/O Elements:*

| Sl.No   | Name of the Pin  | Direction | Description |
|------------|------------|------------|---------|
| 1. | (Q0,Q1,Q2,Q3) | Output     |Parallel output|
| 2.   | (S0,S1)   | Input      |Select lines |
| 3.   | Clk     | Input     | Clock Signal|
| 4.     | (D0,D1,D2,D3)  | Input   |  Parallel Inputs |
| 5.     | Rst(clear)    | Input    | Reset Signal|
| 6.     | SIL    | Input     | Serial Input Left Shift|
|  7.    |SIR     |Input   |  Serial Input Right Shift  |

###  *Block Diagram of Universal shift register:*

![BLOCK](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/b93331a6-ec37-4702-b40e-94ad30a38b54)

###  *Digital Logic circuit of Universal shift register:*

![usr](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/cb11b856-0630-4ba9-b4d1-8330582e48ea)

###  *Modes Of Operation of Universal shift register:*

|   S0    |   S1   |   Mode of Operation   |
|-----------|------------|----------------------|
|   0      |     0      |  Locked state (No change) |
|   0    |       1   |    Shift-Left |
|   1    |       0   |    Shift-Right |
|   1   |       1   |    Parallel Load|

###  *Input Waveform:*

![Screenshot 2024-02-22 131437](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/efa65461-319d-45c0-aefa-3980a69c1749)


###  *Output Waveform:*

![Screenshot 2024-02-22 131537](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/466d401e-1dbb-4931-818c-f2ddc6a48bb2)


</details>

### The Third online meet was held on 22th of Feb 2024 @6PM

<details>
    <summary> TASK 3 </summary>

*Cloning my github repositories:*    
```git clone https://github.com/rajesh0gouda/vsd-risc-v.git```

![WhatsApp Image 2024-02-27 at 1 01 31 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/7b951873-e652-4aa9-8b1a-77487f4cf57c)


*Simulating iverilog by taking files from the folder verilog_code* 
```cd vsd-risc-v```

```iverilog usr.v usrtb.v```


*Generating dump_file*

```./a.out```

![WhatsApp Image 2024-02-27 at 1 03 08 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/4c88b695-5cd3-4c6a-9d2b-e539a293bfa9)


*To get I/O waveform*

```gtkwave dump.vcd```

![WhatsApp Image 2024-02-27 at 1 02 56 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/8802c594-deb3-4f98-8b81-3f9caa179f95)


### Wave Forms:
###  *Input and Output waveform*

![WhatsApp Image 2024-02-27 at 1 03 20 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/d6e2a459-54e3-4878-84b4-fecdc3182bf1)


</details> 

### The Fourth online meet was held on 27th of Feb 2024 @6PM

<details>
    <summary> TASK 4 </summary>

*Invoking yosys inside verilog_code file:* 

```yosys```

![1](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/9b5b4137-8daf-44eb-a680-91854454cdc2)



*Reading the Library:* 

```read_liberty -lib /home/rajeshgouda/vsd-risc-v/sky130_fd_sc_hd__tt_025C_1v80.lib```


*Reading the Design:*    

```read_verilog usr.v```


*Specifying the module that we are synthesizing:*    

```synth -top universal_shift_register```

![2](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/ee934cb3-5a73-4ad9-b792-996d1516611d)


*To generate the netlist:*    

```abc -liberty /home/rajeshgouda/vsd-risc-v/sky130_fd_sc_hd__tt_025C_1v80.lib```

![3](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/1a00793a-004a-46dc-b2e2-f59bbebdfe54)

*To see the graphical version of the logic:*    

```show```
![4](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/c735f042-1307-47b4-ba66-41e6a4b140d1)

![5](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/e537ec78-571c-45f1-8873-eba0bb0d32e0)

*To write the netlist:*    

```write_verilog iusr_netlist.v```

*Using the switch '-noattr' to get the simplified version of netlist file:*    

```write_verilog -noattr iusr_netlist.v```

```show```
*To open the netlist:*    

```!gvim iusr_netlist.v```


![6](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/46cc849a-34b5-4d9f-b378-756681ddd3de)


*Opening the netlist file:*

![7](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/da5dfc6d-3357-4ccc-8fe3-550ffbee7a10)


![8](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/63065cc1-ac37-4efa-8596-39e1faa52d47)


![9](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/b3e08b8e-190e-4e7a-989d-5a9d3cff284c)


![10](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/a3829a6f-174a-42b1-ab53-e63d1806ce5c)

## GATE LEVEL SIMULATION TO RUN THE NETLIST
![41](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/cf06eae6-74f8-465b-842a-36cd6fd110e1)


![42](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/7a28b1bb-b703-4a91-99a6-c833604688e3)

</details>



### The Fifth task was given  on  First of March 2024 

<details>
    <summary> TASK 5 </summary>

*Design file after git clone*

*We are checking gtkwave for the design*

```iverilog 8usr.v 8usrtb.v```

```./a.out ```

``` gtkwave iiitb_usr_out.vcd```

![11](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/34514c54-a1b4-405c-9411-bf2e4a222b5e)


![12](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/1d89cf5f-04a8-4526-8ce2-9aa3e85d041d)


![13](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/152a8102-d715-4026-ae42-8c5a5f2f7a01)

### To generate netlist:

*Invoking yosys inside verilog_code file:* 

```yosys```
![21](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/564da1c7-546c-44e6-8665-bb222ca115f4)

*Reading the Library:* 

```read_liberty -lib /home/rajeshgouda/vsd-risc-v/sky130_fd_sc_hd__tt_025C_1v80.lib```


*Reading the Design:*    

```read_verilog 8usr.v```


*Specifying the module that we are synthesizing:*    

```synth -top iiitb_usr```


*To generate the netlist:*    

```abc -liberty /home/rajeshgouda/vsd-risc-v/sky130_fd_sc_hd__tt_025C_1v80.lib```


![22](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/199a152c-fdbc-491d-87f7-e7b1dae4cc42)

*To see the graphical version of the logic:*    

```show```


*To write the netlist:*    

```write_verilog usr_netlist.v```

*Using the switch '-noattr' to get the simplified version of netlist file:*    

```write_verilog -noattr usr_netlist.v```

```show```
*To open the netlist:*    

```!gvim usr_netlist.v``


![23](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/7da00e11-6fea-4d06-bd05-61d9b4a8af45)

![24](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/2f50fe1a-fd7d-4919-a482-626fd0d0c937)


##To open the netlist file

![25](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/6c10fd28-3fae-4a9a-9963-2b0becf70769)
![26](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/b3da8f5b-3a9d-4e62-ba73-b5dd9347ef15)
![27](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/9883a710-5b83-4282-ae2f-4fdfe7e5621c)
![28](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/3388de2f-8465-4867-ae2e-e13530f58a3d)


## GATE LEVEL SIMULATION TO RUN THE NETLIST

```iverilog primitives.v sky.v usr_netlist.v 8usrtb.v```

```./a.out```

```gtkwave iiitb_usr_out.vcd```

![31](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/eaf7a5e8-c239-4185-bcb4-50d335dc37da)


![32](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/db10d40a-077a-4754-a6ac-5944cb8628aa)

## References
<p align="justify"> In this repository all the theoretical information been found was taken from various online freely avvailable contents</p>

## Acknowledgement 
Thanks to 
<br>Mr. Kunal Ghosh
<br>The Director and co-founder of VLSI System Design (VSD) Corp. Pvt. Ltd.
<br>India




























