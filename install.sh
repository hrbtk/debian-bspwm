#!/bin/bash

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput numlockx

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
# sudo apt install -y intel-microcode #don't work

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# File Manager (or thunar) and Archive Manager
sudo apt install -y pcmanfm file-roller

# Terminal 
sudo apt install -y kitty xterm

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Appearance management
sudo apt install -y lxappearance 

# Browser Installation (Firefox)
sudo apt install -y firefox-esr 

# Desktop background browser/handler
sudo apt install -y nitrogen

# Color temperature setter
sudo apt install -y redshift

# Console screenshot utility
sudo apt install -y scrot

# EXA installation
sudo apt install -y exa

# Unzip installation
sudo apt install -y unzip

# Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

#  bspwm + sxhkd installation
sudo apt install -y bspwm sxhkd

# Menu
sudo apt install -y dmenu rofi

# Bar and composer
sudo apt install -y picom polybar

# Notifications
sudo apt install -y dunst libnotify-bin

# Command line text editor
sudo apt install -y micro

# Graphical text editors
sudo apt install -y geany mousepad

# Install Lightdm Console Display Manager
sudo apt install -y -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Ly Console Manager
# Needed packages
# sudo apt install -y libpam0g-dev libxcb-xkb-dev
# cd 
# git clone --recurse-submodules https://github.com/fairyglade/ly
# cd ly
# make
# sudo make install installsystemd
# sudo systemctl enable ly.service

########################################################

sudo apt autoremove

printf "\e[1;32mNow you can run setup.sh script.\e[0m\n"
