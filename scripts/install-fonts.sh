#!/bin/bash


WORKDIR=$(pwd)
cd $HOME
echo -e "\nDowloading Meslo Fonts:\n"
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip
unzip Meslo.zip -d Meslo
echo -e "\nInstalling Meslo Fonts:\n"
mv Meslo usr/share/fonts/truetype/
echo -e "\nBuilding font information caches\n"
sudo fc-cache -vf /usr/share/fonts/

