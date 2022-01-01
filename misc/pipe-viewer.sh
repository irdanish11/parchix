# make sure mpv is already installed
cd ~/Downloads
# install youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# clone pipe viewer repo
git clone git@github.com:trizen/pipe-viewer.git
cd pipe-viewer

# configuring Build Module 
# cpan
sudo cpan Module::Build

# installation
perl Build.PL
sudo ./Build installdeps
sudo ./Build install
