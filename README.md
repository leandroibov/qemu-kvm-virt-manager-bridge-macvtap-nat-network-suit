#   How use this cli suit for virt manager:

##   Installing

sudo chmod +x install.sh
sudo ./install.sh

## What each file or command do?

virt_manager_start - Start virt manager services...

virt_manager_stop -  Stop virt manager services...

virt_manager_delete - Delete all network created with this scripts
virt_manager_nat - Create nat network for VMs.
virt_manager_default - Start Default nat network for VMs.
virt_manager_macvtap - Create Bridge Macvtap Network mode. - VM be visible in the network to other machines and other VMs, but not to the host!
virt_manager_route - Create Bridge route Network mode. - VM be visible in the network to other machines, to the host and other VMs!
virt_mac_spoofing - Mac Vendor Spoofing for anonimity for VMs in Macvtap Network! The Mac spoofing can not work doing in SO, but just in files of libvirt!
virt_network_spoofing - Mac Vendor Spoofing for anonimity in network configurations .xml files to change mac for some current network desired.
virt_menu - Menu with the options to fastly active this functions!
