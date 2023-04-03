# BosonQ
An open-source mechanical design specifying utilities for operating a sub-atomic pulse-electron accelerated quantum computer
 
> Note: this project is still in early planning. I am collecting the required components such as the UHV Chamber and Turbo-Pumps including the HVPSU. After that, I will need to create various interfaces for controlling these components with one central unit. 

## Features

- **ESP32 low-level controls for operating a high-voltage PSU**
- **ESP32 low-level controls for remotely controlling a turbo-pump**
- **Interfaces for controlling an UHV chamber (ultra-high vacuum)**
- **openQASM transpiler for coherent translation of QASM into low-level ESP32**
- **Low-level code for the qubit state detetion using novel mechanics such as ESR, QPC and SSE**
- **Low-level code for controlling the circular-impulse generator used to produce electron beams**
- **Formal Specification for openQASM and integrated formal verification for QASM code**

## Todo

- Design UHV Parts in openSCAD
- Design beaming device in openSCAD
- Write low-level interfaces including formal hardware-verifications of the code
- Writing documentations

# Design Parameters:

### UHV chamber:

- Size: > 1m x 1m x 1m (larger than the size required for a 64-qubit quantum computer)
- Material: Stainless steel or Aluminum
- Wall thickness: > 10 mm
- Number of ports: > 10
- Port type: CF flange (or other suitable vacuum flange type)
- Base plate: 20-30 mm thick aluminum
- Pumping speed: > 1000 L/s
- Ultimate pressure: < 1 x 10^-10 mbar
- Cooling: Required for stable operation


### Turbopump:

- Pumping speed: > 1000 L/s
- Ultimate pressure: < 1 x 10^-10 mbar
- Inlet flange: CF flange
- Outlet flange: KF flange
- Voltage: 110-220 VAC
- Frequency: 50-60 Hz
- Power consumption: < 200 W


### HVPSU:

- Voltage range: > 1 kV
- Current range: > 1 A
- Stability: < 0.1% over time


### Electron-beam:

- Electron energy: > 10 keV
- Beam current: > 100 nA
- Spot size: < 100 um
- Beam stability: < 0.1% over time

### Possible qCMOS Cameras:

- Hamamatsu ORCA Fusion with drivers here: https://github.com/OxfordIonTrapGroup/orca-camera
- Hamamatsu Orca Flash4.0: Is a CCD camera but has good use for the detection of low-energy particles

### Possible microcontrollers:

- Arduino Due
- Raspberry Pi 4
- BeagleBone Black

## Citation

```latex
@article {
  title = {{bosonQ - An open-source mechanical design for a coherent sub-atomic pulse-electron beaming quantum computer}},
  year = {2020-2023},
  author = {Timo Sarkar},
}
```

## License

The code and all underlying work for bosonQ is released under the Creative Commons Zero v1.0 Universal License.
