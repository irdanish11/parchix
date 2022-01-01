cd ~/Downloads
git clone --recursive https://github.com/albertlauncher/albert.git
mkdir albert-build
cd albert-build
cmake ../albert -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug
make
sudo make install

cd ../ && sudo rm -rfv albert/ && sudo rm -rfv albert-build/ 