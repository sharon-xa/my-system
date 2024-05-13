#!/bin/bash

# COLORS
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

# Check if lsblk command exists
if ! command -v lsblk &>/dev/null; then
	echo -e "${RED}Error: 'lsblk' command not found.${NC}" >&2
	exit 1
fi

Help() {
	# Display Help
	echo "This script will mount the device you want it to mount"
	echo
	echo "mountDisk <device-name> <directory-name>"
	echo "device-name: use 'lsblk -lf' to see the device name"
	echo "directory-name: the directory that the device will be mounted to"
	echo
	echo "options:"
	echo "-s     Print the available devices"
	echo "-h     Print this Help."
	echo
}

# Each option letter should be followed by a colon (:) if the option takes an argument
# Since -s and -h do not take arguments, they shouldn't have a colon after them.
while getopts ":sh" opt; do
	case $opt in
	s) # Display devices
		lsblk -lf
		exit
		;;
	h) # Display help
		Help
		exit
		;;
	\?)
		echo -e "${RED}Invalid option: -$OPTARG${NC}" >&2
		Help
		exit 1
		;;
	esac
done

# Shift to get past the parsed options
shift $((OPTIND - 1))

# VARIABLES
DEVICE_NAME="/dev/$1"
DIR_NAME=$2
MOUNT_DIR="/run/media/$USER/$DIR_NAME/"

# Check if arguments are provided
if [ $# -lt 2 ]; then
	echo -e "${RED}Error: Insufficient arguments.${NC}"
	Help
	exit 1
fi

# Check if the specified device exists
if [ ! -e "$DEVICE_NAME" ]; then
	echo -e "${RED}Error: Device '$DEVICE_NAME' not found.${NC}"
	exit 1
fi

# Check if the mount directory already exists
if [ -d "$MOUNT_DIR" ]; then
	echo -e "${RED}Error: Directory '$MOUNT_DIR' already exists.${NC}"
	exit 1
fi

# Create the necessary directories
if ! sudo mkdir -p "$MOUNT_DIR"; then
	echo -e "${RED}Error: Failed to create directory '$MOUNT_DIR'.${NC}"
	exit 1
fi

# Mount the device
if ! sudo mount "$DEVICE_NAME" "$MOUNT_DIR"; then
	echo -e "${RED}Error: Failed to mount device '$DEVICE_NAME' to '$MOUNT_DIR'.${NC}"
	exit 1
fi

echo -e "${GREEN}DEVICE MOUNTED SUCCESSFULLY${NC}"
exit 0
