#!/bin/bash

printf "\n\n1/8. System UPGRADE\n\n"
bash scripts/update-arch.sh


printf "\n\n2/8. Install AUR Helper -> yay\n\n"
bash scripts/yay-install.sh


printf "\n\n3/8. Install Packages\n\n"
bash scripts/packages.sh


printf "\n\n4/8. Configure Docker for non-root user\n\n"
bash scripts/docker-non-root.sh


printf "\n\n5/8. Copy Config files to ~ i.e. home directory\n\n"
bash scripts/copy-config.sh

printf "\n\n6/8. Setup Oh-My-Zsh\n\n"
bash scripts/setup-ohmy-zsh.sh

printf "\n\n7/8. Install Zsh Extensions & Configure .zshrc \n\n"
bash scripts/zsh-plugins.sh
cp -rv home/.zshrc ~/

printf "\n\n8/8. Install Miniconda\n\n"
bash scripts/miniconda.sh


