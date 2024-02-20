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
