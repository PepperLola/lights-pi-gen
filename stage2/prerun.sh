#!/bin/bash -e

apt-get -y install python3-pip

if [ ! -d "${ROOTFS_DIR}" ]; then
	copy_previous
fi
