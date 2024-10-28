#!/bin/bash

quit () {
  read -p "Abort? Y/N" antw
  if [ $atnw = 'y' ] || [ $antw = 'Y' ]; then
	  exit 1
  fi
} 


sudo apt update && sudo apt upgrade



echo "###############"
echo "# basic Utils #"
echo "###############"

sudo apt -y install kitty firefox-esr nmap tldr ntfs-3g keepassxc

sudo apt -y install network-manager net-tools

sudo apt -y install make gcc build-essential curl pipewire

sudo apt -y install python3 python3-pip

sudo apt -y install jmtpfs exfat-fuse
sudo mkdir /media/phone/

echo "======================================"
echo "|| Flatpak package manager install? ||"
echo "======================================"
echo; echo
read -p "Y/N?" fp

if [ $fp = "y" ] || [ $fp = "Y" ]; then
  fp=1
  sudo apt -y install flatpak
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi



echo "==================="
echo "|| Rust install? ||"
echo "==================="
echo; echo
read -p "Y/N?" fp

if [ $fp = "y" ] || [ $fp = "Y" ]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo "###################"
echo "# X11 xserver etc.#"
echo "###################"


sudo apt -y install xserver-xorg-core xserver-xorg-video-intel xinit xinput x11-xserver-utils 2> ~/x11_err.txt

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

