#!/bin/bash

sudo apt -y install ffmpegthumbnailer poppler-utils fd-find

sudo apt -y install ffmpeg 7zip jq ripgrep fzf zoxide

sudo apt -y install libpng-dev libjpeg-dev libtiff-dev imagemagick

# install ueberzugpp
echo 'deb http://download.opensuse.org/repositories/home:/justkidding/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/home:justkidding.list
curl -fsSL https://download.opensuse.org/repositories/home:justkidding/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_justkidding.gpg > /dev/null
sudo apt update
sudo apt install ueberzugpp



cd ~/.config/

sudo git clone https://github.com/sxyazi/yazi.git

cd yazi/

cargo build --release --locked
