#!/bin/bash

# install base developer packages
sudo pacman -S --needed --noconfirm base-devel git

# install AUR helper
cd ~/Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

rm -rvf yay


