# source: https://aur.archlinux.org/packages/librewolf-bin/
cd ~/Downloads

git clone https://aur.archlinux.org/librewolf-bin.git
cd librewolf-bin

# importing GPG keyserver
# https://wiki.archlinux.org/title/Arch_User_Repository#Acquire_a_PGP_public_key_if_needed
# https://wiki.archlinux.org/title/PKGBUILD#validpgpkeys
# https://wiki.archlinux.org/title/Makepkg#Signature_checking
# if the following key i.e. <031F7**E801>, open PKGBUILD file and search key using "validpgpkeys"
gpg --keyserver hkp://keyserver.ubuntu.com --search-keys 031F7104E932F7BD7416E7F6D2845E1305D6E801

makepkg -sir --noconfirm

sudo pacman -U librewolf-bin-*.pkg.tar.zst --noconfirm

cd ../ && sudo rm -rfv librewolf-bin/
