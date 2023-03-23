#!/bin/bash

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

mkdir -p ~/.config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# XSessions and bspwm.desktop
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
sudo cp ./temp /usr/share/xsessions/bspwm.desktop;rm ./temp

cd && git clone https://github.com/vbeskorovainyi/dotfiles

cp ~/dotfiles/bin ~/

cp ~/dotfiles/backgroud/wallpaper.jpg ~/Pictures/wallpaper.jpg

cp -r ~/dotfiles/.config/bspwm ~/.config/
cp -r ~/dotfiles/.config/sxhkd ~/.config/
cp -r ~/dotfiles/.config/rofi ~/.config/
cp -r ~/dotfiles/.config/picom ~/.config/
cp -r ~/dotfiles/.config/dunst ~/.config/
cp -r ~/dotfiles/.config/kitty ~/.config/

source ~/debian-bspwm-installer/nerdfonts.sh

########################################################

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
