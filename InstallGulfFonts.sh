#! /bin/bash

# Last updated 2022-02-19
# auther: Nirawat Prasertsang
APP_VERSION="1.0"

echo "# Install TH Sarabun New Font for Ubuntu terminal."
echo "# Version $APP_VERSION"
echo ""
echo "*** NOTICE: Install apt-get install"
apt-get install
apt-get update
apt-get install fontconfig
echo ""
echo "*** NOTICE: We've use root [sudo] mode. please enter the password. ***"
echo "Downloading..."
cd ..
cd usr/share/fonts/truetype
mkdir gulf-fonts
cd usr/share/fonts/truetype/gulf-fonts
url="https://github.com/nirawat/install_font_th_sarabun_new/tree/main/Fonts/"
echo "Download complete!"
echo ""
echo "Installing..."
fc-cache -f -v
echo "Install complete!"
echo ""
echo "*** Install TH Sarabun New Font complete ***"