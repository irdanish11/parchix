# source: https://aur.archlinux.org/packages/ulauncher/
cd ~/Downloads

git clone https://aur.archlinux.org/ulauncher.git
cd ulauncher

makepkg -sir --noconfirm

sudo pacman -U ulauncher-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv ulauncher/
