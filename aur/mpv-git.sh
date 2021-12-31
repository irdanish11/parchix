# source: https://aur.archlinux.org/packages/mpv-git/
cd ~/Downloads

git clone https://aur.archlinux.org/mpv-git.git
cd mpv-git

makepkg -sir --noconfirm

sudo pacman -U mpv-git-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv mpv-git/
