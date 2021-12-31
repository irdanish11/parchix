# source: https://aur.archlinux.org/packages/teams/
cd ~/Downloads

git clone https://aur.archlinux.org/teams.git
cd teams

makepkg -sir --noconfirm

sudo pacman -U teams-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv teams/
