# kin_dyn_code_gen.jl
Generates Julia code for closed-form robot kinematics and dynamics functions. 
Uses Pinocchio for kinematics and dynamics solutions and CasADi for code generation.

## Installation
1. Compile and install the [casadi_kin_dyn](https://github.com/ADVRHumanoids/casadi_kin_dyn) package.
2. Clone this repo

## Usage
1. In the [pinocchio_kinematics.py](pinocchio_kinematics.py) file, set the 
`urdf_path` variable to the path of the URDF of your robot.

2. You can then follow the Digit example in [pinocchio_kinematics.py](pinocchio_kinematics.py)
to generate kinematics and dynamics MATLAB functions for your robot.

3. Use the `convert_matlab_kinematics_to_julia` function in [convert_to_julia.jl](convert_to_julia.jl)
to convert the generated MATLAB functions to Julia functions.