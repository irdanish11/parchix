#!/bin/bash
# source: https://aur.archlinux.org/packages/aws-cli-v2-bin/
cd ~/Downloads

git clone https://aur.archlinux.org/aws-cli-v2-bin.git
cd aws-cli-v2-bin

makepkg -sir --noconfirm

sudo pacman -U aws-cli-v2-bin-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv aws-cli-v2-bin/
