{% include 'common/common.sh' %}

# AntTweakBar version
ATB_VERSION="116"

# AntTweakBar Package URL
ATB_URL="http://heanet.dl.sourceforge.net/project/anttweakbar/AntTweakBar_$ATB_VERSION.zip"

# AntTweakBar Directory Name
ATB_DIR="atb-$ATB_VERSION"

# AntTweakBar Install Directory
ATB_INSTALL_LOCATION="/home/$USER"

# Download AntTweakBar
wget -O "/tmp/$ATB_DIR.zip" "$ATB_URL"

# Extract it
unzip "/tmp/$ATB_DIR.zip" -d "$ATB_INSTALL_LOCATION"

# Change to the directory
cd "$ATB_INSTALL_LOCATION/AntTweakBar"

# Make a build directory
mkdir build
cd build

# Create makefile
cmake ..

# Make
make -j2
sudo make install

# Clean up
rm -rf "/tmp/$ATB_DIR.zip"