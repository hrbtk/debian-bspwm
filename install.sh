#!/bin/bash

# xorg display server installation
sudo apt install xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install build-essential

# Microcode for Intel/AMD 
# sudo apt install amd64-microcode
sudo apt install intel-microcode 

# Network File Tools/System Events
sudo apt install dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# File Manager (eg. pcmanfm,krusader,thunar,nautilus)
sudo apt install thunar

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install kitty

# Sound packages
sudo apt install pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install neofetch htop

# Network Manager
sudo apt install network-manager network-manager-gnome 

# Appearance management
sudo apt install lxappearance 

# Browser Installation (Firefox)
sudo apt install firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
sudo apt install nitrogen 
# sudo apt install feh
 
# Fonts and icons
sudo apt install fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme fonts-cascadia-code

# EXA installation
sudo apt install exa

# Galculator installation
sudo apt install galculator

# Printing and bluetooth (if needed)
sudo apt install cups system-config-printer simple-scan
sudo apt install bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

# Packages needed for bspwm installation
sudo apt install bspwm sxhkd picom polybar dmenu xterm numlockx rofi dunst libnotify-bin unzip geany scrot mousepad redshift

# Command line text editor
sudo apt install micro

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Ly Console Manager
# Needed packages
# sudo apt install libpam0g-dev libxcb-xkb-dev
# cd 
# git clone --recurse-submodules https://github.com/fairyglade/ly
# cd ly
# make
# sudo make install installsystemd
# sudo systemctl enable ly.service

########################################################

sudo apt autoremove

printf "\e[1;32mNow you can run setup.sh script.\e[0m\n"
