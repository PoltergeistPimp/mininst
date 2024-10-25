#!/bin/bash
cd ~/.config/
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
