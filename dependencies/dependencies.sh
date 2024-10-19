#!/bin/bash

# quit () {
#   read -p "Abort? Y/N" antw
#   if [ $atnw = 'y' ] || [ $antw = 'Y' ]; then
# 	  exit 1
#   fi
# } 


sudo apt update && sudo apt upgrade



echo "###############"
echo "# basic Utils #"
echo "###############"

sudo apt install git build-essential make kitty firefox-esr pipewire python3 nmap tldr net-tools ntfs-3g keepassxc 2> ~/utils_err.txt

echo "======================================"
echo "|| Flatpak package manager install? ||"
echo "======================================"
echo; echo
read -p "Y/N?" fp

if [ $fp = "y" ] || [ $fp = "Y" ]; then
  fp=1
  sudo apt install flatpack
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi


echo "###################"
echo "# X11 xserver etc.#"
echo "###################"


sudo apt install xserver-xorg-core xserver-xorg-video-intel xinit xinput x11-xserver-utils 2> ~/x11_err.txt

echo '#############'
echo '# LibX etc. #'
echo '#############'

sudo apt install libx11-dev libxinerama-dev libxft-dev libpam0g-dev libxcb-xkb-dev 2> ~/libx_err.txt


cd ~
if [ ! -d .config/ ]; then
  sudo mkdir .config/
fi

quit

echo "###################"
echo "# FotografieTools #"
echo "###################"

# GIMP install met flatpak voor latest release
if [ $fp = 1 ]; then
  flatpak install flathub org.gimp.GIMP
else
  sudo apt install gimp
fi

