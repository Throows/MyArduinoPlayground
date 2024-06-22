# My Arduino Playground

This repository is a collection of project I did to learn Embedded programming using Ardiuno and bare-metal programming (avr-gcc and avr-dude).

## Table of Contents
1 - [Repository Structure](#Repository-Structure) : Structure of this repository\
2 - [Projects](#Projects) : List of projects in this repository\
3 - [Getting Started](#Getting-Started) : How to get started with this repository\
4 - [License and Contribution](#License-and-Contribution) : License and Contribution information

## Repository Structure

Each folder contains project. You will find the schematic, some explaination or tutorial in a README.md file. All the projets are by default written in C++ with the Arduino framework and PlatformIO. However some projects may contain the `lowlevel` folder which is basically the same project but written in C with the avr-gcc compiler and the xmake build utility.

## Projects

- [Button Led Controller](./button_led_controller/Readme.md) : Getting started with Arduino using a simple button and the built-in LED

## Getting Started

To get started and run a project, I strongly recommend to use the PlatformIO extension for Visual Studio Code. Here is a link to the [PlatformIO website](https://docs.platformio.org/en/latest/what-is-platformio.html).\

Then if you want to run the project in the `lowlevel` folder, you will need to install the avr-gcc compiler and avr-dude. Here is a link to the [AVR-GCC compiler](https://www.microchip.com/en-us/development-tools-tools-and-software/gcc-compilers-avr-and-arm) and the [AVR-Dude](https://www.nongnu.org/avrdude/).

NOTE: avr-gcc and avr-dude are installed by platformio if you use and ardiuno board. to test if they are installed, go to the following path and check if the `toolchain-atmelavr` and `tool-avrdude` folders are present:

```bash
%userprofile%\.platformio\packages\
```

in the main folder of the project, you will find a `add_avrtools.bat` file. Run it in the VSCode terminal to add their path to the project environement. (Be careful, this will only work for the current terminal session. You will need to run it again if you open a new terminal session,  NEED to be run as administrator)

TODO: Add cmake ? Xmake ? Makefile ?


## License and Contribution

This repository is under the Apache License 2.0. You can find the license in the [LICENSE](./LICENSE) file.\
If you want to contribute to this repository, feel free to open an issue or a pull request. I will be happy to discuss and help you with your contribution.

Copyright 2024 - Throows.