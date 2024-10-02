#!/bin/bash

# Color variables
red='\033[0;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
magenta='\033[1;95m'
cyan='\033[1;96m'
# Clear the color after that
clear='\033[0m'
echo -e "$cyan"
echo "Installing"
echo -e "$clear"
sudo apt update > /dev/null 2>&1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo apt-get install -y xrdp
sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon -y
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
echo -e "$cyan"
echo "Running services"
echo -e "$clear"
sudo service xrdp start
echo -e "${blue}Your RDP:${clear}"
echo -e "$yellow"
curl ipinfo.io/ip
echo -e "$clear"
echo
echo -e "${blue}ISP & Country:${clear}"
echo -e "$green"
curl ipinfo.io/org
curl ipinfo.io/country
echo -e "$clear"
