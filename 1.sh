#!/bin/sh
make clean
make all -j40 LOCALVERSION=-nova-range-test 2>&1 | tee kim.log
make modules_install -j40
make install -j40
sudo update-grub2

