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
sudo apt install bspwm sxhkd picom numlockx rofi dunst libnotify-bin unzip geany scrot mousepad

# Command line text editor
sudo apt install micro

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

mkdir -p ~/.config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Ly Console Manager
# Needed packages
sudo apt install libpam0g-dev libxcb-xkb-dev
cd 
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
sudo systemctl enable ly.service

#Or

# Install Lightdm Console Display Manager
# sudo apt install -y lightdm lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm

# XSessions and dwm.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=bspwm
Comment=Binary space partitioning window manager
Exec=bspwm
Icon=bspwm
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/dwm.desktop;rm ./temp

########################################################

source ~/debian-installers/nerdfonts.sh

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"