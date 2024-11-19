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

# DWM
alias makedwm='sudo make && sudo make clean install'
alias confmake='sudo rm config.h && sudo make && sudo make clean install'

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
alias gimp='flatpak run org.gimp.GIMP'
alias shotwell='flatpak run org.gnome.Shotwell'
alias darktable='flatpak run org.darktable.Darktable'
alias obsidian='flatpak run md.obsidian.Obsidian'
