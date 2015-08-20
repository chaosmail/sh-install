{% include 'common/common.sh' %}

sudo apt-get -y install libreadline-dev libsqlite3-dev

# Python Version
PY_SHORT_VERSION={% block short_version %}3.4{% endblock %}
PY_VERSION={% block version %}3.4.3{% endblock %}

# Python Package URL
PY_URL="https://www.python.org/ftp/python/$PY_VERSION/Python-$PY_VERSION.tgz"

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
