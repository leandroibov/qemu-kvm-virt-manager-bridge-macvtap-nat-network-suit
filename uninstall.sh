#!/bin/bash

# List of files to be copied from /bin to /tmp
echo;
echo "Uninstalling virt_menu and other programs..."
files=(
  "virt_manager_start"
  "virt_manager_stop"
  "virt_manager_delete"
  "virt_manager_nat"
  "virt_manager_default"
  "virt_manager_macvtap"
  "virt_manager_route"
  "virt_mac_spoofing"
  "virt_network_spoofing"
  "virt_menu"
)

# Copy files from /bin to /tmp and then delete them from /tmp
echo "Copying files from /bin to /tmp..."
for file in "${files[@]}"; do
  if [ -f "/bin/$file" ]; then
    echo "Copying $file to /tmp..."
    sudo cp "/bin/$file" /tmp/
    
    # After copying, delete the file from /tmp
    echo "Deleting $file from /tmp..."
    sudo rm -f "/tmp/$file"
    echo "$file has been uninstalled from /tmp."
  else
    echo "File $file not found in /bin, skipping."
  fi
done

echo "Uninstallation process completed."

