#!/bin/bash

# This script copies the configuration files to their respective places in a user's system

# THIS WILL OVERWRITE YOUR CONFIG FILES!

# for home directory dotfiles
cp bash_profile $HOME/.bash_profile
cp bashrc $HOME/.bashrc
cp vimrc $HOME/.vimrc
cp xinitrc $HOME/.xinitrc

# for config files to reside in ".config"
cp -r config/. -t $HOME/.config/

# for etc files to reside in "/etc/"
sudo cp -r etc/. -t /etc/

# for local binaries to reside "/usr/local/bin"
sudo cp -r usr/local/bin/. -t /usr/local/bin/
