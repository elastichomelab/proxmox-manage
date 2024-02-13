#!/bin/bash

# Backup the current interfaces file
cp /etc/network/interfaces /etc/network/interfaces.bak

# Copy the new interfaces file
cp ../files/interfaces /etc/network/interfaces

# Check if openvswitch-switch is installed
if ! dpkg -l | grep -q openvswitch-switch; then
    echo "Warning: openvswitch-switch is not installed. Please install it manually."
    echo "apt update"
    echo "apt install -y openvswitch-switch"
    # You may choose to exit here or continue based on your requirements
fi

# Restart networking service
systemctl restart networking

# Ping google.com
ping -c 1 google.com

# Check the result of ping
if [ $? -eq 0 ]; then
    echo "Ping to google.com successful. Initialization completed."
else
    echo "Warning: Ping to google.com failed. Restoring interfaces file and restarting networking service."
    # Restore the backup interfaces file
    mv /etc/network/interfaces.bak /etc/network/interfaces
    # Restart networking service again
    systemctl restart networking
    echo "Initialization failed."
    exit 1
fi

