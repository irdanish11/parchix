# source: https://aur.archlinux.org/packages/ungoogled-chromium/
cd ~/Downloads

git clone https://aur.archlinux.org/ungoogled-chromium.git
cd ungoogled-chromium

makepkg -sir --noconfirm

sudo pacman -U ungoogled-chromium-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv ungoogled-chromium/
