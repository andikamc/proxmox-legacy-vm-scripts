#!/bin/bash
set -e

# Install parted
apt -y update
apt -y install parted

# Resize the root partition
parted -a optimal /dev/sda ---pretend-input-tty resizepart 1 Yes `parted -l | grep /dev/sda | cut -d' ' -f3 | tr -d MB`

# Disable this service and mask
systemctl disable rc-parted
systemctl mask rc-parted

# Automatically reboot
reboot