#!/bin/bash

set -e

curl -sL https://raw.githubusercontent.com/FelipeGdM/scripts-collection/main/fresh_start.sh | bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt update

sudo apt install python3 python-is-python3 ros-noetic-desktop-full -y

echo "bass source /opt/ros/noetic/setup.bash" >> ~/.config/fish/config.fish
