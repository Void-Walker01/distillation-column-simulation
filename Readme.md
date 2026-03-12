# Binary Distillation Column Design & Simulation

This project implements the **McCabe–Thiele method in MATLAB** to analyze binary distillation of an ethanol–water mixture and estimate the number of theoretical stages required for separation.

## Overview

The simulation models vapor–liquid equilibrium and the operating lines of a distillation column to perform tray-by-tray stage stepping using the McCabe–Thiele graphical method. Starting from the distillate composition, the algorithm alternates between the equilibrium curve and the operating lines until the bottom composition is reached.

The model also estimates the **feed stage location** and **minimum reflux ratio**, and studies how the **reflux ratio affects the number of stages required**.

## What the Model Includes

- Vapor–Liquid Equilibrium (VLE) modeling using relative volatility
- Rectifying and stripping operating line calculations
- Feed condition representation using the **q-line**
- Automated McCabe–Thiele stage stepping
- Estimation of **theoretical stages**
- Detection of **feed stage location**
- Numerical estimation of **minimum reflux ratio**
- Reflux ratio sensitivity analysis

## Results

### McCabe–Thiele Diagram

![McCabe-Thiele Diagram](plots/figure_1.png)

### Effect of Reflux Ratio on Number of Stages

![Reflux Ratio Analysis](plots/figure_2.png)

## Key Insight

The simulation highlights the classic trade-off in distillation design:

- **Higher reflux ratio → fewer stages required**
- **Lower reflux ratio → more stages required**

Minimum reflux ratio represents the theoretical limit where separation becomes possible but requires an infinite number of stages.

## Tools Used

MATLAB • Separation Processes • Heat & Material Balance

## Author

Rohit Guleria  
B.Tech Chemical Engineering  
IIT (ISM) Dhanbad