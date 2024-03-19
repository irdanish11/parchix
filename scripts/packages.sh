#!/bin/bash

# Core packages
yay -S neofetch i3-gaps-rounded-git i3blocks dmenu kitty vim man betterlockscreen ly \
       # Core utils to manage hardware and others  
       unrar tar feh ntfs-3g acpi vtop xorg-xinput xorg-xrandr arandr xclip xsel \
       sysstat blueman bluez bluez-utils backlight_control redshift-minimal \
       # Media utils
       ranger w3m-imgcat atool ueberzug highlight odt2txt mediainfo ffmpegthumbnailer \
       cmus mpv pipe-viewer-git yt-dlp zathura zathura-pdf-mupdf \
       # GUI utils
       firefox transmission-gtk shutter libreoffice-fresh insync \
       # Develeopment tools
       visual-studio-code-bin aws-cli-v2-bin postman-bin terraform docker kubectl minikube --sudoloop --noconfirm

