#!/bin/bash

# Update package lists
sudo apt update

# Install required packages
sudo apt install -y git python3 python3-pip

# Clone the Mr.Holmes repository
git clone https://github.com/MrHolmes/MrHolmes.git

# Move the application to the desired location
sudo mv MrHolmes /opt/MrHolmes

# Set permissions (adjust as needed)
sudo chown -R $USER:$USER /opt/MrHolmes
sudo chmod -R 755 /opt/MrHolmes

# Create a symbolic link (optional)
sudo ln -s /opt/MrHolmes/bin/mrholmes /usr/local/bin/mrholmes

# Install Python dependencies
cd /opt/MrHolmes
pip3 install -r requirements.txt

# Start the application (if necessary)
# ./mrholmes --start
