#!/bin/bash

printf "\nCopying config files from \\home\\danish to Manjaro Configs..\n"
cp -v /home/danish/.i3blocks.conf home/

cp -v /home/danish/.vimrc home/

cp -v /home/danish/.zshrc home/

cp -rv /home/danish/.config/i3 home/.config/

cp -rv /home/danish/.config/kitty home/.config/

cp -v /home/danish/.config/mpv/input.conf home/.config/mpv/
cp -v /home/danish/.config/mpv/mpv.conf home/.config/mpv/

cp -rv /home/danish/.config/neofetch home/.config/

