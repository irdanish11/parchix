# source: https://aur.archlinux.org/packages/jetbrains-toolbox/
cd ~/Downloads

git clone https://aur.archlinux.org/jetbrains-toolbox.git

cd jetbrains-toolbox

makepkg -sri --noconfirm 

sudo pacman -U jetbrains-toolbox-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv jetbrains-toolbox/
