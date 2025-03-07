# Debian 10 VM Creation Script

This script automates the creation of a Debian 10 virtual machine on Proxmox VE.

## Prerequisites

- Proxmox VE version 8.1 or later
- `wget` installed on the Proxmox VE host
- Root privileges

## How to install

To create a new Proxmox VE - VM, run the command below in the Proxmox VE Shell.

```bash -c "$(wget -qLO - https://github.com/andikamc/proxmox-legacy-vm-scripts/raw/master/scripts/debian10-vm.sh)"
```

## Script Details

The script performs the following steps:

1. Checks for root privileges.
2. Validates the Proxmox VE version.
3. Checks the system architecture.
4. Optionally warns if running over SSH.
5. Prompts the user to choose between default and advanced settings.
6. Validates storage options and selects a storage pool.
7. Downloads the Debian 10 Qcow2 disk image.
8. Creates and configures the virtual machine.
9. Optionally starts the virtual machine.

## Advanced Settings

If you choose advanced settings, the script will prompt you to configure the following:

- Virtual Machine ID
- Machine Type (i440fx or q35)
- Disk Size
- Disk Cache
- Hostname
- CPU Model (KVM64 or Host)
- CPU Cores
- RAM Size
- Bridge
- MAC Address
- VLAN
- Interface MTU Size
- Whether to start the VM upon completion

## License

This script is licensed under the MIT License. See the [LICENSE](https://github.com/community-scripts/ProxmoxVE/raw/main/LICENSE) file for details.

## Author

MickLesk (CanbiZ)

## More Information

For more information, visit the [discussion page](https://github.com/community-scripts/ProxmoxVE/discussions/836).