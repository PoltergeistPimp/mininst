# System
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -la'
alias sap='sudo apt update && sudo apt -y upgrade'
alias cl='clear'
alias sht='sudo shutdown now'
alias rbt='sudo reboot'

# paths & shortcuts
alias h='cd ~/'
alias r='cd /'
alias c='cd ~/.config/'
alias bashrc='nvim ~/.bashrc'
alias bashali='nvim ~/.bash_aliases'

# scripts
alias wacom="(dir=$(pwd) && cd /home/poltergeist/hulp/ && ./wacomsetup.sh && cd $dir)"
alias hdd="(dir=$(pwd) && cd /home/poltergeist/hulp/ && ./hdd.sh && cd $dir)"

# DWM
alias dwm='cd ~/.config/dwm/'
alias makedwm='sudo make && sudo make clean install'
alias makeconf='sudo rm config.h && sudo make && sudo make clean install'
alias xpro='xprop | grep "WM_CLASS(STRING)"'

# Apps
alias vim='nvim'
alias yazi='~/.config/yazi/target/release/yazi'

# Git
alias ginit='git init'
alias gadd='git add'
alias gommit='git commit'
alias gush='git push'
alias gull='git pull'
alias glog='git log --graph --abbrev-commit --decorate'

# Flatpak
alias flatin='flatpak install -y flathub'
alias gimp='flatpak run org.gimp.GIMP'
alias shotwell='flatpak run org.gnome.Shotwell'
alias darktable='flatpak run org.darktable.Darktable'
alias obsidian='flatpak run md.obsidian.Obsidian'
alias krita='flatpak run org.kde.krita'
alias inkscape='flatpak run org.inkscape.Inkscape'
