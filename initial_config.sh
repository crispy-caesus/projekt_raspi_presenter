#!/bin/bash

echo "initial config for autostart"
echo "============================"
echo ""

echo ""
echo "1. setting up boot config"
ConfigFile="/boot/config.txt"
if grep -e "^dtoverlay" "$ConfigFile" >> /dev/Null; then
    echo "  disabling dtoverlay"
    sudo sed -i 's/^dtoverlay=/#dtoverlay=/g' "$ConfigFile"
fi
if ! grep -e "display_rotate=" "$ConfigFile" >> /dev/Null; then
    echo "  adding display rotation"
    echo "display_rotate=0" | sudo tee -a "$ConfigFile"
fi

# wallpaper
echo ""
echo "2. setting background image"
pcmanfm --set-wallpaper wallpaper/RoboAG_horizontal.png

# desktop scripts
echo ""
echo "3. copying helper scripts to desktop"
chmod u+x scripts/*.sh
cp scripts/*.sh "${HOME}/Desktop/"

# install programs
echo ""
echo "4. installing okular"
sudo apt install okular -y

# default - run pdf
echo ""
echo "5. config autostart of PDF"
./PDF_autostart.sh
