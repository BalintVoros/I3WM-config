#!/bin/bash


#Dependencies installer

sudo pacman -S git

git clone https://aur.archlinux.org/yay-git.git && cd yay-git

makepkg -si

cd ..

sudo yay -S discord spotify brave-bin unity-hub


sudo pacman -S flameshot scrot feh picom kitty rofi libreoffice neovim neofetch

sudo pacman -S pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack alsa-utils playerctl


