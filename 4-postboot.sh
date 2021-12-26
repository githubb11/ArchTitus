#!/usr/bin/env bash

sudo pacman -S awesome code rofi 

# laptop stuff


PKGS=(
'tlp'
'awesome'
'lxappearance'
'rofi'
'i3lock-fancy'
'polkit-gnome'
'xfce4-power-manager'
'picom'
'terminator'
'lightdm'
'ttf-roboto'
)


# getting assets icons etc todo put in local dotfiles
cd ~/ && mkdir build && cd build
# put yours themes icon cursors
git clone https://github.com/yeyushengfan258/We10XOS-cursors
git clone https://github.com/yeyushengfan258/Win11-icon-theme
git clone https://github.com/yeyushengfan258/We10X-icon-theme

# awesome config {change to my dotfile}
cd ~/.config && mkdir awesome 
git clone https://github.com/HikariKnight/material-awesome ~/.config/awesome/

# enable lighdm
sudo systemctl enable lightdm
for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --needed
done
