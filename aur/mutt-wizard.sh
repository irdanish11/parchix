#!/bin/bash
# source: https://aur.archlinux.org/packages/mutt-wizard/
cd ~/Downloads

git clone https://aur.archlinux.org/mutt-wizard.git
cd mutt-wizard

makepkg -sir --noconfirm

sudo pacman -U mutt-wizard-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv mutt-wizard/
