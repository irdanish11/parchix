#!/bin/bash
# source: https://aur.archlinux.org/packages/mendeley-reference-manager/

cd ~/Downloads

git clone https://aur.archlinux.org/mendeley-reference-manager.git
cd mendeley-reference-manager

makepkg -sir --noconfirm

sudo pacman -U mendeley-reference-manager-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv mendeley-reference-manager/
