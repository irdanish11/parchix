#!/bin/bash
# source: https://aur.archlinux.org/packages/session-desktop-bin/
cd ~/Downloads

git clone https://aur.archlinux.org/session-desktop-bin.git
cd session-desktop-bin

makepkg -sir --noconfirm

sudo pacman -U session-desktop-bin-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv session-desktop-bin/
