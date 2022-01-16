#!/bin/bash

basic_utils () {
    sudo pacman -S base-devel git 
}


return_check () {
    read var1
    if [[ $var1 == "" ]]
    then
        echo ""
    fi
}

development () {
    printf "\nDevelopment:\n"
    printf "\t1.  VS Code\n"
    printf "\t2.  Vim\n"
    printf "\t3.  Postman\n"
    printf "\t4.  NeoVim\n"
    printf "\t5.  JetBrains Toolbox\n"
    printf "\t6.  Docker\n"
    printf "\t7.  AWS CLI V2\n"
    # aur/VS Code
    # aur/vim.sh
    # aur/postman.sh
    # aur/neovim.sh
    # aur/jetbrains-toolbox.sh
    # aur/docker.sh
    # aur/awscliv2-bin.sh
}

communication () {
    printf "\nCommunication:\n"
    printf "\t1.  Mutt Email Client\n"
    printf "\t2.  Mutt Wizard\n"
    printf "\t3.  Session Messenger\n"
    printf "\t4.  Signal Desktop\n"
    printf "\t5.  Microsoft Teams \n"
    printf "\t6.  Thunderbird Email Client\n"
    printf "\t7.  Upwork Desktop Client\n"
    printf "\t8.  Zoom\n"
    # aur/mutt-email-client.sh
    # aur/mutt-wizard.sh
    # aur/session-desktop-bin.sh
    # aur/signal-desktop.sh
    # aur/teams.sh
    # aur/thunderbird.sh
    # aur/upwork.sh
    # aur/zoom.sh
}

utilities () {
    printf "\nUtilities:\n"
    printf "\t1.  Extreme Download Manager\n"
    printf "\t2.  WPS Office\n"
    printf "\t3.  ULauncher \n"
    printf "\t4.  Transmission GUI \n"
    printf "\t5.  Transmission CLI\n"
    printf "\t6.  Toggl Track\n"
    printf "\t7.  Shutter Screen Capturing\n"
    printf "\t8.  Mendeley\n"
    printf "\t9.  Display Brightness Controller\n"
    printf "\t10. Libre Office Still\n"
    printf "\t11. Libre Office Fresh\n"
    printf "\t12. Insync\n"
    printf "\t13. Albert Launcher\n" 
    printf "\t14. Entr (Run arbitrary commands when files change)\n"
    # aur/xdman.sh
    # aur/wps-office.sh
    # aur/ulauncher.sh
    # aur/transmission-gtk.sh
    # aur/transmission-cli.sh
    # aur/toggltrack.sh
    # aur/shutter.sh
    # aur/mendeley.sh
    # aur/light-git.sh
    # aur/libreoffice-still.sh
    # aur/libreoffice-fresh.sh
    # aur/insync.sh
    # aur/albert-git.sh
    # aur/entr.sh
}

media () {
    printf "\nMedia:\n"
    printf "\t1.  cmus\n"
    printf "\t2.  mpv\n"
    printf "\t3.  vlc\n"
    # aur/cmus.sh
    # aur/mpv.sh
    # aur/vlc.sh
}

browsers () { 
    printf "\nBrowsers:\n"
    printf "\t1.  Ungoogled Chromium\n"
    printf "\t2.  Firefox\n"
    printf "\t3.  LibreWolf Binary\n"
    printf "\t4.  LibreWolf (Source Build)\n"
    printf "\t5.  Tor\n"
    printf "\t6.  Chromium\n"
    # aur/chromium.sh
    # aur/firefox.sh 
    # aur/librewolf-bin.sh
    # aur/librewolf-source-compile.sh
    # aur/tor.sh
    # aur/ungoogled-chromium.sh
}


package_managers () {
    printf "\nPackage Managers:\n"
    printf "\t1.  yay\n"
    printf "\t2.  flatpak\n"
    # aur/yay.sh
    # aur/flatpak.sh
}


window_file_managers () {
    printf "\nWindow & File Managers:\n"
    printf "\t1.  i3-wm (i3-wm and i3-status)\n"
    printf "\t2.  i3-Package (i3-gaps, i3-wm, i3blocks, i3lock, i3status)\n"
    printf "\t3.  Ranger\n"
    printf "\t4.  w3imgdisplay (Display Thumbnails and Images in Ranger)\n"
    # aur/i3-wm.sh
    # aur/i3-package.sh
    # aur/ranger.sh
    # aur/w3imgdisplay.sh
}


misc_pkg () {
    printf "\nMiscellaneous and Custom Utilities & Packages:\n"
    printf "\t1.  Albert Launcher (Source Build)\n"
    printf "\t2.  Librewolf Browser (Flatpak Build)\n"
    printf "\t3.  Miniconda\n"
    printf "\t4.  Pipe Viewer (Youtube on Terminal)\n"
    printf "\t5.  Youtube DL\n"
    printf "\t6.  Generating SSH key for GitHub\n"
    # misc/albert.sh
    # misc/librewolf-flatpak.sh
    # misc/miniconda.sh
    # misc/pipe-viewer.sh
    # misc/youtube-dl.sh
}


list_aur_pacman () {
    clear 
    printf "\nCategory wise list of all packages from pacman and AUR\n"
    development
    communication
    utilities
    media
    browsers
    package_managers
    window_file_managers
    printf "\nPress Return/Enter to continue: "
    return_check    
}

menu () {
    # clear
    printf "\n"
    printf "a. Select packages from pacman & AUR\n"
    printf "b. List all packages from pacman and AUR\n"
    printf "c. Install all packages from pacman and AUR\n"
    printf "d. Select packages from miscellaneous repositries and sources\n"
    printf "q. Exit\n"
    printf "Select: "
}



main () {
    while :
    do
        menu
        read menu_selection
       
        if [[ $menu_selection == "a" ]]
        then
        elif [[ $menu_selection == "b" ]]
        then
            list_aur_pacman
            return_check

        elif [[ $menu_selection == "c" ]]
        then
            echo $menu_selection

        elif [[ $menu_selection == "d" ]]
        then
            misc_pkg

        elif [[ $menu_selection == "q" ]]
        then
            echo $menu_selection

        else
            echo $menu_selection
        fi
    done
    
}


main
