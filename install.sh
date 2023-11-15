#!/bin/bash

# Check the Linux distribution
if [ -f /etc/debian_version ]; then
    # Debian-based system (e.g., Ubuntu)
    sudo apt-get update
    sudo apt-get install -y python3-pip
elif [ -f /etc/redhat-release ]; then
    # Red Hat-based system (e.g., Fedora)
    sudo dnf install -y python3-pip
else
    echo "Unsupported Linux distribution."
    exit 1
fi

# Install Python libraries using pip
pip3 install subprocess re concurrent.futures pandas numpy scapy psutil pyshark scikit-learn

echo "Installation of libraries complete."


# Choose a directory for the command
target_directory=~/bin

# Step 2: Move or copy the script to the chosen directory
echo "Copying main.sh to $target_directory"
cp main.sh $target_directory/iiitaos

# Step 3: Make the script executable
echo "Making iiitaos executable"
chmod +x $target_directory/iiitaos

# Step 4: Update the PATH environment variable
echo "Updating the PATH environment variable"
echo "export PATH=\$PATH:$target_directory" >> ~/.bashrc

# Prompt the user to source the updated configuration
read -p "Do you want to source the updated configuration now? (y/n): " choice
if [ "$choice" == "y" ]; then
    source ~/.bashrc
    echo "Configuration sourced."
else
    echo "Remember to source your configuration or restart your terminal to apply the changes."
fi

echo "Installation complete."
