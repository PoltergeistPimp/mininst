#!/bin/bash

# update packages
sudo apt update && sudo apt -y upgrade

# instellen HDMI als hoofdscherm
xrandr --output HDMI-1 --primary --mode 2560x1440 --rate 60.00 --output DVI-D-1 --mode 1920x1080 --rate 60.00 --left-of HDMI-1

# mount Rugged HDD als gevonden
if [[ $(sudo fdisk -l | grep "B3D8FA7E-2B79-4C2B-BED1-308F8BA49EA8") ]]; then
  path=$(sudo fdisk -l | grep "B3D8FA7E-2B79-4C2B-BED1-308F8BA49EA8" -A 9 | tail -n 1 | grep -o "^/dev/sd[b-z]2")
  sudo mount -t exfat, $path /media/hdd/
  echo; echo "Lacies rugged hdd gemount"
else
    echo; echo "Lacies rugged hdd niet gevonden"
fi
