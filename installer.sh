#!/bin/bash

#Automated installer


git clone https://github.com/BalintVoros/I3WM-config
cd I3WM-config
sudo cp i3/*  ~/.config/i3/
sudo cp i3blocks/* ~/.config/i3blocks/
sudo cp i3status/* ~/.config/i3status/
mkdir /home/$USER/Wallpapers
sudo cp Wallpapers/* ~/home/$USER/Wallpapers
sudo cp neofetch/* ~/.config/neofetch/
sudo cp kitty/* ~/.config/kitty/
sudo cp rofi/* ~/.config/rofi/
sudo cp Neovim/* ~/.config/nvim/
mkdir /home/$USER/.config/scripts
sudo cp scripts/* ~/.config/scripts/

echo "A Script lefutott köszönöm hogy használtad/The script successfully executed thanks for using it Author: BalintVoros"
