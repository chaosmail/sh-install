#!/bin/bash

# Update the Package Manger Sources
sudo apt-get -y update

# Upgrade the Package Manager Sources
sudo apt-get -y upgrade

# Install Common Packages
sudo apt-get -y install software-properties-common libssl-dev openssl wget

# Python Package URL
PY_URL="https://www.python.org/ftp/python/$PY_VERSION/Python-$PY_VERSION.tgz"

# Python Version
PY_SHORT_VERSION=3.4
PY_VERSION=3.4.3

# Python Directory Name
PY_DIR="Python-$PY_VERSION"

# Python Install Directory
PY_INSTALL_LOCATION=/opt

# Download Python
wget --directory-prefix=/tmp "$PY_URL"

# Extract it
sudo tar -xvf "/tmp/$PY_DIR.tgz" -C "$PY_INSTALL_LOCATION"

# Link the headers
sudo ln -s "$PY_INSTALL_LOCATION/$PY_DIR/Include" "/usr/include/python$PY_SHORT_VERSION"

# Change to the directory
cd "$PY_INSTALL_LOCATION/$PY_DIR"

# Configure and make
./configure && make

# Install it
sudo make install

# Clean up
rm -rf "/tmp/$PY_DIR.tgz"