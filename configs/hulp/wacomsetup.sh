#!/bin/bash

# opstelling voor args (wip)
# if [ $1 == "-l" ];then
  # xsetwacom --list devices
# fi

if [[ "$(xsetwacom --list devices)" == "" ]]; then
  echo "niets aangesloten"
  exit 0
fi

id1=$(xsetwacom --list devices | grep -oP 'id:\s*\K\d+' | sed -n '1p')
id2=$(xsetwacom --list devices | grep -oP 'id:\s*\K\d+' | sed -n '2p')
id3=$(xsetwacom --list devices | grep -oP 'id:\s*\K\d+' | sed -n '3p')

# echo $id1 $id2 $id3

# quick setup Intuos 2
# xsetwacom --set $id3 Touch off
# xsetwacom --set $id1 MapToOutput HDMI-1 && xsetwacom --set $id2 MapToOutput HDMI-1 && xsetwacom --set $id3 MapToOutput HDMI-1
xsetwacom --set "$id3" Touch off && xsetwacom --set "$id2" Touch off && xsetwacom --set "$id1" Touch off
xsetwacom --set "$id1" MapToOutput HDMI-1 && xsetwacom --set "$id2" MapToOutput HDMI-1 && xsetwacom --set "$id3" MapToOutput HDMI-1

echo; echo "Wacom klaar voor gebruik"
