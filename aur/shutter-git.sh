# source: https://aur.archlinux.org/packages/shutter-git/
cd ~/Downloads

git clone https://aur.archlinux.org/shutter-git.git
cd shutter-git

makepkg -sir --noconfirm

sudo pacman -U shutter-git-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv shutter-git/
