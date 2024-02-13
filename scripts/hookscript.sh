#!/bin/bash

# Define paths
source_script="../files/snippets/port-mirror.sh"
destination_directory="/var/lib/vz/snippets/"
log_directory="/var/log/custom"

# Copy the script to the destination directory
cp "$source_script" "$destination_directory"

# Add execute permission to the owner
chmod +x "$destination_directory/port-mirror.sh"

# Check if log directory exists, create if not
if [ ! -d "$log_directory" ]; then
    mkdir -p "$log_directory"
    echo "Created directory: $log_directory"
fi

echo "Initialization completed."