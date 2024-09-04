# Traffic-Light-Management-System-using-FPGA

![FPGA](https://img.shields.io/badge/FPGA-Spartan%206-blue)
![Verilog](https://img.shields.io/badge/Language-Verilog-orange)
![Xilinx ISE](https://img.shields.io/badge/Tool-Xilinx%20ISE-green)

## Overview

The **Traffic Light Management System** is an FPGA-based project designed to manage traffic lights at a four-road intersection efficiently. The system is implemented using **Verilog** and simulated on the **Spartan-6 FPGA** board, utilizing the **Xilinx ISE WebPack** for simulation and hardware programming. This system provides a more modern and efficient approach to traffic control by using programmable logic devices (PLDs) for real-time traffic management.

## Objective

The primary objective of the project is to design and implement a traffic light controller system using Verilog HDL and the Spartan-6 FPGA. The system controls the traffic lights at a four-way intersection with the ability to manage traffic congestion efficiently.

## Features

- **Verilog-Based Implementation**: The project is entirely implemented using Verilog HDL.
- **FPGA Deployment**: The system is tested and deployed on the Spartan-6 FPGA board.
- **Multiple Traffic Phases**: The system simulates six distinct traffic light phases, transitioning between states for smooth traffic management.
- **Efficient Traffic Control**: Reduces unnecessary waiting times for vehicles by dynamically switching between different traffic lights based on the defined state machine.
- **Modular Design**: Implements a modular design with separate Verilog modules for each part of the system.
- **Simulation and Schematic**: RTL and technology schematic diagrams are generated during the simulation phase.

## Hardware and Software Components

### Hardware
- **Spartan-6 XC6SLX9 FPGA Board**
- **LEDs** (Red, Yellow, Green) for representing traffic signals
- **Resistors** for LED protection
- **Breadboard** for circuit assembly and connecting wires

### Software
- **Xilinx ISE WebPack**: Used for synthesizing and simulating Verilog code.
- **Vivado Design Suite**: Optionally used for HDL design.
- **EDA Playground**: A web-based tool for HDL code simulation.

## Methodology

The system operates on a finite state machine (FSM) to handle traffic light transitions. It cycles through six states representing different traffic conditions for two main roads (M1 and M2) and two side roads (S and MT). Each state is assigned a specific time interval, after which it transitions to the next state. The FSM resets after completing all six states.

## Results

The FPGA-based Traffic Light Management System was successfully implemented and tested on the Spartan-6 board. The traffic lights operated in accordance with the FSM design, cycling through all six states.

- **State Transitions**: All transitions between traffic light states worked as expected.
- **Traffic Light Response**: The lights switched in a timely manner according to the programmed delay intervals.
