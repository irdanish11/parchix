# source: https://aur.archlinux.org/packages/postman-bin/
cd ~/Downloads

git clone https://aur.archlinux.org/postman-bin.git
cd postman-bin

makepkg -sir --noconfirm

sudo pacman -U postman-bin-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv postman-bin/
