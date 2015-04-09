# Download self-included pip installer
wget https://bootstrap.pypa.io/get-pip.py

# Create a PIP config directory
mkdir -p $HOME/.config/pip

# Create a configuration file
echo -e "[install]\nuser = true" > $HOME/.config/pip/pip.conf

# Install pip and setuptools
python3 get-pip.py

# Remove the get-pip.py file
rm get-pip.py