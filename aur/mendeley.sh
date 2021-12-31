# source: https://aur.archlinux.org/packages/mendeleydesktop/

cd ~/Downloads

git clone https://aur.archlinux.org/mendeleydesktop.git
cd mendeleydesktop

makepkg -sir --noconfirm

sudo pacman -U mendeleydesktop-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv mendeleydesktop/