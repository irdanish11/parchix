#!/bin/bash
# source: https://aur.archlinux.org/packages/xdman/
cd ~/Downloads

git clone https://aur.archlinux.org/xdman.git
cd xdman

makepkg -sir --noconfirm

sudo pacman -U xdman-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv xdman/
