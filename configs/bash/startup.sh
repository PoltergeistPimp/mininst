#!/bin/bash

sudo apt update && sudo apt -y upgrade

xrandr --output HDMI-1 --primary --mode 2560x1440 --rate 60.00 && --output DVI-D-1 --mode 1920x1080 --rate 60.00 --left-of HDMI-1
