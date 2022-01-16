#!/bin/bash
# source: https://aur.archlinux.org/packages/zoom/
cd ~/Downloads

git clone https://aur.archlinux.org/zoom.git
cd zoom

makepkg -sir --noconfirm

sudo pacman -U zoom-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv zoom/
