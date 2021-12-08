#! /bin/bash

# dependencies for brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update

# install brave
sudo apt install brave-browser

# download the snap store
sudo apt install snapd -y
sudo snap install core

# install visual studio code
sudo snap install code --classic

# install discord
sudo snap install discord

# add snap apps to your apps folder
sudo cp /var/lib/snapd/desktop/applications/code_code.desktop /usr/share/applications
sudo cp /var/lib/snapd/desktop/applications/discord_discord.desktop /usr/share/applications

# install steam
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wget gdebi-core libgl1-mesa-glx:i386 -y
wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb
sudo gdebi ~/steam.deb

# update/install python
sudo apt-get install python3
