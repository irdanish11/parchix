#!/bin/bash
# source: https://aur.archlinux.org/packages/yay/
cd ~/Downloads

git clone https://aur.archlinux.org/yay.git
cd yay

makepkg -si --noconfirm

sudo pacman -U yay-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv yay/
