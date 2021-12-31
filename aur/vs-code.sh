# update the pacman package repository cache
sudo pacman -Sy

# install Git
# sudo pacman -S git

cd ~/Downloads
# clone the Visual Studio Code’s AUR repository
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin/

# make a pacman package of vs code
makepkg -s --noconfirm

# install the generated pacman package with pacman package manager
sudo pacman -U visual-studio-code-bin-*.pkg.tar.zst --noconfirm

# remove the downloaded files
cd ../ && sudo rm -rfv visual-studio-code-bin/

