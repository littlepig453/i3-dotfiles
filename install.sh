#!/bin/bash

# This script copies the configuration files to their respective places in a user's system

# THIS WILL OVERWRITE YOUR CONFIG FILES!

# for home directory dotfiles
cp bash_profile $HOME/.bash_profile
cp bashrc $HOME/.bashrc
cp vimrc $HOME/.vimrc
cp xinitrc $HOME/.xinitrc

# for config files to reside ".config"
cp config/alacritty/alacritty.toml -t $HOME/.config/alacritty/
cp config/i3/config -t $HOME/.config/i3/
cp config/zathura/zathurarc -t $HOME/.config/zathura/

# for etc files to reside "/etc/"
cp etc/i3status.conf -t /etc/
cp etc/modprobe.d/blacklist.conf -t /etc/modprobe.d/
cp etc/NetworkManager/conf.d/dns.conf -t /etc/NetworkManager/conf.d/
