#!/usr/bin/env bash

sudo pacman -S awesome code rofi 

# laptop stuff


PKGS=(
''
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done
