#!/bin/bash
# source: https://aur.archlinux.org/packages/upwork/
cd ~/Downloads

git clone https://aur.archlinux.org/upwork.git
cd upwork

makepkg -sir --noconfirm

sudo pacman -U upwork-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv upwork/
