cd ~/Downloads

git clone https://aur.archlinux.org/light-git.git

cd light-git 

makepkg -sir --noconfirm

sudo pacman -U light-git-*.pkg.tar.zst --noconfirm

cd ../ && rm -rfv light-git/
