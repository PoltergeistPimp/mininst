#!/bin/bash

echo "###################"
echo "# FotografieTools #"
echo "###################"

# GIMP install met flatpak voor latest release
if [ $fp = 1 ]; then
  flatpak install flathub org.gimp.GIMP
else
  sudo apt install gimp
fi

