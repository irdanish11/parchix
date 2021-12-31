# source: https://aur.archlinux.org/packages/albert-git/
cd ~/Downloads

git clone https://aur.archlinux.org/albert-git.git
cd albert-git

makepkg -sir --noconfirm

sudo pacman -U albert-git-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv albert-git/
