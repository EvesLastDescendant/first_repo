#!/bin/bash

linux_distro=/etc/os-release

if grep -q "Ubuntu" $linux_distro
then
  echo "===============Linux distro is Ubuntu.================"
  echo "Creating virtual Memory..."
  echo "Allocating space for virtual memory ######################"
  
  sudo fallocate -l 4G /swap.img

  echo "Vimming file into existence *********************"

  sudo mkswap /swap.img

  echo "Switching swap.img on !!!!!!!!!!!!!!!!!!!!!!!!!!!!"

  sudo swapon /swap.img

  echo '/swap.img none swap sw 0 0' | sudo tee -a /etc/fstab

else
  echo "xxxxxxxxxxxxxxxxLinux distro is not Ubuntu. Find setup for distro.xxxxxxxxxxxxxxx"
fi
