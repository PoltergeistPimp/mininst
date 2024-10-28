#!/bin/bash

sudo apt install fuse

cd ~

# Download appimage
wget https://github.com/neovim/neovim/releases/download/v0.10.1/nvim.appimage
chmod u+x nvim.appimage

# Aanmaken nvim shortcut
sudo mv nvim.appimage /usr/local/bin/nvim

cd ~/.config/

# NvChad setup
git clone https://github.com/NvChad/starter ~/.config/nvim

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "! Laat alles laden na openen nvim !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

sleep 3

nvim
