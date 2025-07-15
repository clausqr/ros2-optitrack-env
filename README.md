# Optitrack to ROS2 Bridge Environment


This repository contains the setup and configuration files for a ROS2 environment that interfaces with Optitrack motion capture systems. The environment is designed to facilitate the development and testing of applications that require real-time motion capture data.

Set up from [ros2-vscode-container-dev](https://github.com/clausqr/ros2-vscode-dev-containers) template.


## Setup Instructions

1. **Clone the Repository** and navigate to the project directory:
 
   ```bash
   git clone git@github.com:clausqr/ros2-optitrack-env.git
   cd ros2-optitrack-env
   ```

2. **Build** image as per [ros2-vscode-container-dev](https://github.com/clausqr/ros2-vscode-dev-containers) template instructions:
   
   ```bash
   ./rr build
   ```

3. **Run** the container:
   
   ```bash
   ./rr run
   ```

4. **Setup** everything in the container:
   
   ```bash
   cd /ros2_ws
   bash init.bash
   ``` 

From here on follow the instructions in the `README.md` file of the `mocap4ros2_optitrack` package.

5. **SSH Access**: If SSH access is enabled, you can connect to the container to start coding using:
   
   ```bash
   ssh -p 20022 user@localhost
   ```
