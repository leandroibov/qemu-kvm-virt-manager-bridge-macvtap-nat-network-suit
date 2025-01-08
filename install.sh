#!/bin/bash

echo;
# Check if the UID is 0 (root)
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root!" >&2
    read -rp "The program will finish (Type 'ok' or 'any key'): " response1
    exit 1  # Exit the script with an error code
fi

# The script continues here if the user is root
echo "You are logged in as root. Continuing the script..."
echo;

# List of files to copy to /bin
files=(
  "virt_manager_start"
  "virt_manager_stop"
  "virt_manager_delete"
  "virt_manager_nat"
  "virt_manager_default"
  "virt_manager_macvtap"
  "virt_manager_route"
  "virt_bridge"
  "virt_mac_spoofing"
  "virt_network_spoofing"
  "virt_menu"
)

# Check and copy files to /bin
echo "Copying files to /bin..."
for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Copying $file to /bin..."
    sudo cp -r "$file" /bin/
  else
    echo "File $file not found, skipping."
  fi
done

echo "File copy process completed."

