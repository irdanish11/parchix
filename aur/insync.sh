# source: https://aur.archlinux.org/packages/insync/
cd ~/Downloads

git clone https://aur.archlinux.org/insync.git
cd insync

makepkg -sir --noconfirm

sudo pacman -U insync-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv insync/
