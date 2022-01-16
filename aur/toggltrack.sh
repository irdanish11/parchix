#!/bin/bash
# source: https://aur.archlinux.org/packages/toggldesktop/
cd ~/Downloads

git clone https://aur.archlinux.org/toggldesktop.git
cd toggldesktop

makepkg -sir --noconfirm

sudo pacman -U toggldesktop-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv toggldesktop/
