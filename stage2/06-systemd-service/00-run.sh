#!/bin/bash -e
cp piled.service "${ROOTFS_DIR}/etc/systemd/system/"

on_chroot << EOF
    systemctl enable piled
EOF
