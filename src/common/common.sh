#!/bin/bash

# Update the Package Manger Sources
sudo apt-get -y update

# Upgrade the Package Manager Sources
sudo apt-get -y upgrade

# Install Common Packages
sudo apt-get -y install software-properties-common libssl-dev openssl wget