#!/bin/bash

yay -S visual-studio-code-bin postman-bin mongodb-bin mongodb-compass cmus \
       ranger mpv docker shutter vim transmission-gtk w3m-imgcat zoom vlc \
       signal-desktop neovim mongodb-tools-bin mongosh-bin chromium \
       aws-cli-v2-bin libreoffice-fresh jdk8-openjdk jdk11-openjdk \
       jetbrains-toolbox terraform jdk17-openjdk kitty maven nodejs \
       vagrant virtualbox zotero-bin vtop i3-gaps-rounded-git i3blocks dmenu\
       feh xorg-xrandr arandr xclip xsel zathura zotero-bin sysstat youtube-dl \
       pipe-viewer-git wireless_tools unrar tar atool ueberzug highlight lynx \
       odt2txt mediainfo light backlight_control kubectl minikube neofetch \
       ffmpegthumbnailer insync pamixer xorg-xinput postgresql docker-compose \
       xorg-xinput teams alsa-utils pamixer ansible vim-ansible go ly \
       --sudoloop --noconfirm

# we also need to install linux<kernel-version>-virtualbox-host-modules e.g. yay -S linux515-virtualbox-host-modules
# after installing sudo modprobe vboxdrv or reboot
