# boson
An open-source mechanical design specifying utilities for operating a sub-atomic pulse-electron accelerated quantum computer

> Note: this project is still in early planning. I am collecting the required components such as the UHV Chamber and Turbo-Pumps including the HVPSU. After that, I will need to create various interfaces for controlling these components with one central unit. 

## Features

- **ESP32 low-level controls for operating a high-voltage PSU**
- **ESP32 low-level controls for remotely controlling a turbo-pump**
- **Interfaces for controlling an UHV chamber (ultra-high vacuum)**
- **openQASM transpiler for coherent translation of QASM into low-level ESP32**
- **Low-level code for the qubit state detetion using novel mechanics such as ESR, QPC and SSE**
- **Low-level code for controlling the circular-impulse generator used to produce electron beams**
