# source: https://aur.archlinux.org/packages/w3m-imgcat/
cd ~/Downloads

git clone https://aur.archlinux.org/w3m-imgcat.git
cd w3m-imgcat

makepkg -sir --noconfirm

sudo pacman -U w3m-imgcat-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv w3m-imgcat/
