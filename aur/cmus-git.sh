# source: https://aur.archlinux.org/packages/cmus-git/
cd ~/Downloads

git clone https://aur.archlinux.org/cmus-git.git
cd cmus-git

makepkg -sir --noconfirm

sudo pacman -U cmus-git-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv cmus-git/
