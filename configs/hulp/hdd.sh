#!/bin/bash

if [[ $(ls /media/hdd/) != "" ]]; then
  echo; echo "Lacies rugged hdd al gemount"
else
  if [[ $(sudo fdisk -l | grep "B3D8FA7E-2B79-4C2B-BED1-308F8BA49EA8") ]]; then
    path=$(sudo fdisk -l | grep "B3D8FA7E-2B79-4C2B-BED1-308F8BA49EA8" -A 9 | tail -n 1 | grep -o "^/dev/sd[b-z]2")
    sudo mount -t exfat, $path /media/hdd/
    echo; echo "Lacies rugged hdd gemount"
  else
    echo; echo "Lacies rugged hdd niet gevonden"
  fi
fi
