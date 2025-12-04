# Smart Cooling Library (Modelica)
**Status: Work in Progress**  

This repository contains a developing set of Modelica-based thermal simulation models that explore how processors and multi-processor systems behave under different cooling strategies. The work focuses on understanding how internal heat generation, coolant flow, component geometry, and active versus passive cooling affect the temperature evolution of electronic systems. The goal of this project is to create a modular and scalable set of thermal models that can be used both for early-stage design evaluations and for research in thermal management of processors and data centers.

## Overview

The project is centered around a series of thermal architectures: a simple single-processor model without any active cooling, the same system augmented with a pump-driven cooling loop, and finally a scaled four-story data center rack that replicates how cooling loads accumulate as hardware density increases. These models make use of the **Modelica Standard Library** and are built to be flexible so that pipe lengths, diameters, gravity effects, processor heat generation, and coolant flow conditions can be modified easily.

The simulations provide insight into how processors heat up when left uncooled, how quickly temperatures can stabilize when fluid circulation is introduced, and how a shared loop must operate when multiple processors are positioned vertically in a rack-like structure. This progression makes it possible to observe thermal behavior at three levels of complexity while maintaining a consistent modeling framework.

## Model Architecture
### Single-Processor Thermal Loop (Passive Cooling)

The first configuration is the simplest representation of the system. A processor with internal heat generation is connected to a surrounding loop of fluid pipes, but no pump or forced circulation is included. Because the coolant remains stationary, the processor temperature rises continuously as heat accumulates in the solid and fluid domains. This model establishes a baseline for comparison and highlights the limitations of passive cooling for high-power electronic components.

### Single-Processor Loop With Pump (Active Cooling)

To overcome the thermal limitations of passive cooling, this second configuration introduces a pump into the loop. Coolant is circulated at a constant speed, transporting heat away from the processor and distributing it through the pipes. The behavior of the system changes significantly: the processor still heats up initially, but the rate of temperature rise is slower and a lower equilibrium temperature is eventually reached. This model demonstrates how even a simple pump can dramatically change the thermal balance of the system by enabling forced convection.

### Four-Story Data Center Rack (Active Cooling, Multi-Processor)

The final configuration scales the system into a multi-processor data center rack. Each story contains one processor, its local set of heat-exchanging pipes, and connections to both internal and ambient temperature sources. All four stories are connected to the same pump-driven coolant loop, which allows the model to represent how thermal loads accumulate and interact across different levels of a rack. This environment makes it possible to study how coolant flow is distributed, how upstream processors affect downstream temperatures, and how pump capacity must increase to support additional hardware.\


## Getting Started

To run the models, clone the repository and open the main library file (SmartCoolingLibrary.mo) in any Modelica-compliant tool such as Dymola. The example models listed in the examples folder serve as recommended entry points. Users can simulate each configuration directly, modify parameters, or extend the models to explore different cooling strategies.

## Work in Progress

The project is still under active development, and many parameters such as pump speed mapping, processor material properties, and system boundary conditions are subject to refinement. Additional documentation, validation procedures, and automated analysis tools will be added as the project evolves.

## Contact
Author: Harshal Wagh
Email: hswagh@shockers.wichita.edu
