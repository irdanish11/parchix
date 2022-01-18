#!/bin/bash
# source: https://aur.archlinux.org/packages/toggldesktop-bin/
cd ~/Downloads

git clone https://aur.archlinux.org/toggldesktop-bin.git
cd toggldesktop-bin

makepkg -sir --noconfirm

sudo pacman -U toggldesktop-bin-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv toggldesktop-bin/
