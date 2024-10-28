#!/bin/bash 

cd ~/.config/ 
git clone --recurse-submodules https://github.com/mounta11n/ly

cd ~/.config/ly/

make

echo "Test in andere CLI of werkt met:"
echo "make run"
echo; echo
read -p "any key to continue:"


sudo make install installsystemd

systemctl enable ly.service
