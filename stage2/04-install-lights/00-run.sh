#!/bin/bash -e
git clone https://github.com/PepperLola/lights.git
mkdir "${ROOTFS_DIR}/etc/piled"
mv -r ./lights/pi/* "${ROOTFS_DIR}/etc/piled"
rm -rf ./lights
