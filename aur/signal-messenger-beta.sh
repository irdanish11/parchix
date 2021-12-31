# source: https://aur.archlinux.org/packages/signal-desktop-beta/
cd ~/Downloads

git clone https://aur.archlinux.org/signal-desktop-beta.git
cd signal-desktop-beta

makepkg -sir --noconfirm

sudo pacman -U signal-desktop-beta-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv signal-desktop-beta/
