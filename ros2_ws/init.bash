#!/bin/bash

# de: http://github.com/MOCAP4ROS2-Project/mocap4ros2_optitrack

cd /ros2_ws/src
# Clone the mocap4ros2_optitrack repository
git clone git@github.com:MOCAP4ROS2-Project/mocap4ros2_optitrack.git

cd /ros2_ws/src/mocap4ros2_optitrack/

# Install dependencies using rosdep
rosdep init
rosdep update
# Install dependencies for the mocap4ros2_optitrack package
cd /ros2_ws/
rosdep install --from-paths src --ignore-src -r -y

# Import additional repositories if needed
cd /ros2_ws/src
vcs import < mocap4ros2_optitrack/dependency_repos.repos

# Build the ROS 2 workspace
colcon build --symlink-install
source /ros2_ws/install/setup.bash