#!/bin/bash

sudo apt -y install ffmpegthumbnailer poppler-utils fd-find

cd ~/.config/
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
