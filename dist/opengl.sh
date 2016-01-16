#!/bin/bash

# Upgrade the Package Manager Sources
sudo apt-get -y upgrade

# Update the Package Manger Sources
sudo apt-get -y update

# Install Common Packages
sudo apt-get -y install software-properties-common libssl-dev openssl wget build-essential cmake

# Installing GLUT, GLFW, GLEW
sudo apt-get -y install freeglut3-dev libglfw3-dev libglew-dev