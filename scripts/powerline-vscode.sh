#!/bin/bash

COMPRESSED="$HOME/Downloads/Compressed"

if [ -d  $COMPRESSED ] 
then
    echo "Directory $COMPRESSED already exists." 
else
    echo "Directory $COMPRESSED does not exists, creating it..."
    mkdir -p $HOME/Downloads/Compressed
fi

cd $COMPRESSED

# download fonts
printf "\n\nDownloading Meslo Fonts"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip

printf "\n\nUnziping Meslo Fonts"
mkdir Meslo
cp -v Meslo.zip Meslo
cd Meslo
unzip Meslo.zip
rm -v Meslo.zip
cd ..

printf "\n\nMoving Fonts to /usr/share/fonts/truetype"
mkdir Meslo
sudo mkdir /usr/share/fonts/truetype/
sudo mv -v Meslo /usr/share/fonts/truetype/Meslo

sudo fc-cache -vf /usr/share/fonts/

printf "\n\nIn settings.json of your VS Code add the following line:\n\n"
printf '"terminal.integrated.fontFamily": "MesloLGM Nerd Font"\n\n'

printf "\n\nFor more info visit: https://dev.to/webdevfarhan/comment/fdd5"
printf "\n\nTo know the names of other fonts to use them in the terminal, use following command:"
printf '\n\nfc-list | grep -i "meslo"\n'

