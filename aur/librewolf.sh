cd ~/Downloads

git clone https://aur.archlinux.org/librewolf.git
cd librewolf

makepkg -sir --noconfirm

cd ../ && sudo rm -rfv librewolf/
