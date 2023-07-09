#!/bin/bash -e
git clone https://github.com/PepperLola/lights.git
mkdir "${ROOTFS_DIR}/etc/piled"
mv -r ./lights/pi/* "${ROOTFS_DIR}/etc/piled"
rm -rf ./lights
python -m pip install -r "${ROOTFS_DIR}/etc/piled/requirements.txt" --target "${ROOTFS_DIR}/lib/python3/dist-packages"
