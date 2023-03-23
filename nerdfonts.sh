#!/bin/bash

if [[ ! -d ~/.fonts ]]; then
    mkdir ~/.fonts
fi

if [[ ! -d ~/tmp ]]; then
    mkdir ~/tmp
fi

cd /tmp
fonts=( 
    "FiraCode" 
    "Go-Mono" 
    "Hack" 
    "Inconsolata" 
    "Iosevka" 
    "JetBrainsMono" 
    "Mononoki" 
    "RobotoMono" 
    "SourceCodePro" 
    "UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$font.zip
    sudo unzip $font.zip -d $HOME/.fonts/$font/
    rm $font.zip
done
fc-cache -f -v