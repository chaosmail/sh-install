#!/bin/bash

# Add the ansible repository
sudo apt-add-repository -y ppa:ansible/ansible

# Update the Package Manger Sources
sudo apt-get -y update

# Install ansible
sudo apt-get -y install ansible