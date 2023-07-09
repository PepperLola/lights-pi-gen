#!/bin/bash -e
if [ -d "lights" ]; then
        rm -r lights
fi
git clone https://github.com/PepperLola/lights.git
if [ -d "${ROOTFS_DIR}/etc/piled" ]; then
        rm -rf "${ROOTFS_DIR}/etc/piled"
fi
mkdir "${ROOTFS_DIR}/etc/piled"
mv ./lights/pi/* "${ROOTFS_DIR}/etc/piled"
rm -rf ./lights
python3 -m pip install -r "${ROOTFS_DIR}/etc/piled/requirements.txt" --target "${ROOTFS_DIR}/lib/python3/dist-packages"
