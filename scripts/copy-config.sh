#!/bin/bash

print "\n\nCopying configs...\n\n"
cd home && cp -rv .config ~/
cp -v .i3blocks.conf ~/
cp -v .vimrc ~/
cp -v .zshrc ~/

print "\n\nCopying backgrounds...\n\n"
cp -rv bg/ ~/Pictures
cd ..
