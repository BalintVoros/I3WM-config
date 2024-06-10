#!/bin/bash


#Dependencies installer

sudo pacman -S git

git clone https://aur.archlinux.org/yay-git.git && cd yay-git

makepkg -si

cd ..

sudo pacman -S lxappearance
sudo pacman -R i3lock
yay -S i3lock-color
sudo yay -S discord
sudo pacman -S acpi bluez-utils bluez blueman qbittorrent
sudo sytemctl start bluetooth


sudo pacman -S flameshot scrot feh picom kitty rofi libreoffice neovim neofetch

sudo pacman -S pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack alsa-utils playerctl

yay -S spotify

yay -S  brave-bin
sudo cp -R capitaine-cursors /usr/share/icons
sudo cp -R kora-gery /usr/share/icons
sudo cp -R VALYRIAN-Total-Steel /usr/share/themes
sudo cp -R fonts/0xProtoNerdFont-Regular.ttf /usr/share/fonts
sudo cp -R fonts/0xProtoNerdFontMono-Regular.ttf /usr/share/fonts
sudo cp -R fonts/0xProtoNerdFontPropo-Regular.ttf /usr/share/fonts
cd ..
cd .config/scripts
sudo chmod +x *


