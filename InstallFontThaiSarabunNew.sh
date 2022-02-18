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
apt-get -y install git-all
echo ""
echo "*** NOTICE: We've use root [sudo] mode. please enter the password. ***"
echo "Downloading..."
cd ..
cd usr/share/fonts/truetype
mkdir thai-sarabun-new
git clone https://github.com/inwdragon/thsn-for-ubuntu.git
wget -q -O - https://gist.githubusercontent.com/Blastoise/72e10b8af5ca359772ee64b6dba33c91/raw/2d7ab3caa27faa61beca9fbf7d3aca6ce9a25916/clearType.sh | bash
echo "Download complete!"
echo ""
echo "Installing..."
mkdir /usr/share/fonts/truetype/thai-sarabun-new
mv `pwd`/thsn-for-ubuntu/*.ttf /usr/share/fonts/truetype/thai-sarabun-new/
fc-cache -f -v
echo "Install complete!"
echo ""
echo "Removing install package..."
rm -rf `pwd`/thsn-for-ubuntu/
echo "Remove install package complete!"
echo ""
echo "*** Install TH Sarabun New Font complete ***"