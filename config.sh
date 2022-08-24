#!/bin/bash

menu () {
    # clear
    printf "\n"
    printf "1. System UPGRADE -> (pacman -Syu)\n"
    printf "2. Install AUR Helper -> yay\n"
    printf "3. Install Packages -> (yay -S <packages>)\n"
    printf "4. Configure Docker for non-root user\n"
    printf "5. Install Oh-My-Zsh\n"
    printf "6. Configure Oh-My-Zsh\n" 
    printf "7. Copy Config files to ~ i.e. home directory\n"
    printf "8. Install Miniconda\n" 
    printf "q. Exit\n\n"
    printf "Select: "
}


main () {
    # clear
    while :
    do
        #clear
        menu
        read menu_selection
       
        if [[ $menu_selection == "1" ]]; then
            bash scripts/update-arch.sh

        elif [[ $menu_selection == "2" ]]; then
            bash scripts/yay-install.sh

        elif [[ $menu_selection == "3" ]]; then
            bash scripts/packages.sh

        elif [[ $menu_selection == "4" ]]; then
            bash scripts/docker-non-root.sh

        elif [[ $menu_selection == "5" ]]; then
        	bash scripts/setup-ohmy-zsh.sh

        elif [[ $menu_selection == "6" ]]; then
        	bash scripts/zsh-plugins.sh
        	
        elif [[ $menu_selection == "7" ]]; then
            bash scripts/copy-config.sh

		elif [[ $menu_selection == "8" ]]; then
            bash scripts/miniconda.sh

        elif [[ $menu_selection == "q" ]]; then
            exit
        else
            printf "Wrong Choice!\n"
        fi
    done
    
}


main




