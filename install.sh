#!/bin/bash

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput numlockx

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Microcode for Intel/AMD (can't install)
# sudo apt install -y amd64-microcode
# sudo apt install -y intel-microcode

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# File Manager (or thunar) and Archive Managers
sudo apt install -y pcmanfm file-roller unzip

# Terminal 
sudo apt install -y kitty xterm

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

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

# Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

#  bspwm + sxhkd installation
sudo apt install -y bspwm sxhkd

# Menu
sudo apt install -y dmenu rofi

# Additional packages (not all) for these rofi apps:
# https://github.com/svenstaro/rofi-calc
# https://github.com/cdown/clipmenu
# https://github.com/cdown/clipnotify
# https://github.com/ericmurphyxyz/rofi-wifi-menu
sudo apt install -y rofi-dev qalc libtool libtool-bin

# Bar and compositor
sudo apt install -y polybar picom

# Notifications
sudo apt install -y dunst libnotify-bin

# Command line text editor
sudo apt install -y micro neovim

# Graphical text editor
sudo apt install -y mousepad

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

########################################################

sudo apt autoremove

########################################################

# Some initial setup steps will be added

# Test this for downloading style stuff
# git clone https://myrepo.com/folder.git && \
# git clone https://myrepo.com/folder2.git && \
# git clone https://myrepo.com/folder3.git

########################################################

printf "\e[1;32mFinished!\e[0m\n"
