# SmartCoolingLibrary(Modelica)

> 🚧 **Status: Work in Progress**  
> This project is actively under development. Interfaces, parameters, and model names may change as the work evolves.

## Overview

This repository contains a set of **Modelica thermal models** for studying processor and data center cooling concepts.  

The current focus is on:

- Modeling a **processor** as a lumped thermal mass using its physical dimensions and material properties (e.g., aluminum block).
- Connecting the processor to a **fluid cooling loop** (pipes, pump) to study how different cooling strategies affect temperature rise.


The models are built and tested primarily in **Modelica Standard Library**.

---

## Key Features (current & planned)

- ✅ Lumped thermal mass representation of a processor (HeatCapacitor-based).
- ✅ Room/ambient temperature boundary and internal heat generation.
- ✅ Cooling pipe models with configurable:
  - Length
  - Diameter
  - Static height (pressure gain/drop)
- ✅ Basic data center rack cooling concept with multiple processors.
  
- 🔄 Planned:
  - Parameterized “rack” templates for different story counts (1U/2U/3U…).
  - More realistic pump and valve models.
  - Automated parametric sweeps and plotting scripts.
  - Export of FMUs for co-simulation with 3D CFD tools.
