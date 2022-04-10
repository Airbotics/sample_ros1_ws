#!/bin/bash
set -e

source "/opt/ros/melodic/setup.bash"

source "/catkin_ws/devel/setup.sh"

rosrun py_package listener.py