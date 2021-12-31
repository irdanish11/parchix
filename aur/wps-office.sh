# source: https://aur.archlinux.org/packages/wps-office/
cd ~/Downloads

git clone https://aur.archlinux.org/wps-office.git
cd wps-office

makepkg -sir --noconfirm

sudo pacman -U wps-office-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv wps-office/
