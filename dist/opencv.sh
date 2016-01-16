#!/bin/bash

# Upgrade the Package Manager Sources
sudo apt-get -y upgrade

# Update the Package Manger Sources
sudo apt-get -y update

# Install Common Packages
sudo apt-get -y install software-properties-common libssl-dev openssl wget build-essential cmake

# Removing any pre-installed ffmpeg and x264
sudo apt-get -y remove ffmpeg x264 libx264-dev

# Install dependencies
sudo apt-get -y install libopencv-dev pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils ffmpeg qt5-default

# OpenCV version
CV_VERSION="$(wget -q -O - http://sourceforge.net/projects/opencvlibrary/files/opencv-unix | egrep -m1 -o '\"[0-9](\.[0-9]+)+' | cut -c2-)"

# OpenCV Package URL
CV_URL="http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/$CV_VERSION/opencv-"$CV_VERSION".zip/download"

# OpenCV Directory Name
CV_DIR="opencv-$CV_VERSION"

# OpenCV Install Directory
CV_INSTALL_LOCATION=/opt

# Download OpenCV
wget -O "/tmp/$CV_DIR.zip" "$CV_URL"

# Extract it
sudo unzip "/tmp/$CV_DIR.zip" -d "$CV_INSTALL_LOCATION"

# Change to the directory
cd "$CV_INSTALL_LOCATION/$CV_DIR"

# Make a build directory
mkdir build
cd build

# Create makefile
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..

# Make
make -j2

sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig

# Clean up
rm -rf "/tmp/$CV_DIR.zip"