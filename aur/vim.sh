#!/bin/bash
sudo pacman -S vim --noconfirm

# lazy way to add the cpaability to vim to copy the text to systems clipboard
# i.e. so that text can be copied to and from vim to other programs. 
# which can be accessed using `+` register.
sudo pacman -S gvim --noconfirm
