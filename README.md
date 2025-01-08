#   How use this cli suit for virt manager:

##   Installing

sudo chmod +x install.sh

sudo ./install.sh

## What each file or command do?

virt_manager_start - Start virt manager services...

virt_manager_stop -  Stop virt manager services...

virt_manager_delete: Deletes all networks created with these scripts.

virt_manager_nat: Creates a NAT network for VMs.

virt_manager_default: Starts the default NAT network for VMs.

virt_manager_macvtap: Creates a Bridge Macvtap Network mode. The VM will be visible to other machines and VMs on the network, but not to the host.

virt_manager_route: Creates a Bridge Route Network mode. The VM will be visible to other machines, the host, and other VMs.

virt_mac_spoofing: MAC Vendor Spoofing for anonymity for VMs in Macvtap Network. MAC spoofing works in files of libvirt, not directly in the OS.

virt_network_spoofing: MAC Vendor Spoofing for anonymity in network configuration .xml files, allowing you to change the MAC address for a specific network.

virt_menu: A menu with options to quickly activate these functions!


