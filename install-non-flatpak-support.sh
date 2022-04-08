#!/usr/bin/env bash

## Removing occasional crashes from apt ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock


## Updating System ##

sudo apt upgrade -y

## Uptading reps ##

sudo apt update 

## Google Chrome ##

mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 

sudo dpkg -i *.deb


## Installing NodeJS LTS ##

sudo apt install curl -y
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs


## Installing Git ##

sudo apt-get install git -y
sudo add-apt-repository ppa:git-core/ppa -y


## Repository Softwares ##

sudo apt install flatpak -y
sudo add-apt-repository ppa:flatpak/stable -y
sudo apt update -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 


## Apps Flatpak ##

flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.slack.Slack -y
flatpak install flathub io.github.shiftey.Desktop -y




echo "Tudo pronto, reinicie seu PC!"
