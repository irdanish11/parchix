cd ~/Downloads

git clone https://aur.archlinux.org/librewolf.git
cd librewolf

makepkg -si --noconfirm

sudo pacman -U librewolf-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv librewolf/
