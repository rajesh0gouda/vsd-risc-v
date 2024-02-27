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
```git clone https://github.com/sujankumarsj/VSD.git```

![WhatsApp Image 2024-02-27 at 1 01 31 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/7b951873-e652-4aa9-8b1a-77487f4cf57c)


*Simulating iverilog by taking files from the folder verilog_code* 
```cd VSD```

```cd verilog_code```

```iverilog vend.v tb_vend.v```


*Generating dump_file*

```./a.out```

![WhatsApp Image 2024-02-27 at 1 03 08 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/4c88b695-5cd3-4c6a-9d2b-e539a293bfa9)


*To get I/O waveform*

```gtkwave dumpfile.vcd```

![WhatsApp Image 2024-02-27 at 1 02 56 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/8802c594-deb3-4f98-8b81-3f9caa179f95)


### Wave Forms:
###  *Input and Output waveform*

![WhatsApp Image 2024-02-27 at 1 03 20 PM](https://github.com/rajesh0gouda/vsd-risc-v/assets/160471378/d6e2a459-54e3-4878-84b4-fecdc3182bf1)


</details> 

