#!/bin/bash

#Automated installer
mkdir /home/$USER/Wallpapers
sudo cp i3/*  /home/$USER/.config/i3/
sudo cp i3blocks/* /home/$USER/.config/i3blocks/
sudo cp i3status/* /home/$USER/.config/i3status/

sudo cp Wallpapers/* ~/home/$USER/Wallpapers
sudo cp neofetch/* /home/$USER/.config/neofetch/
sudo cp kitty/* /home/$USER/.config/kitty/
sudo cp rofi/* /home/$USER/.config/rofi/
sudo cp Neovim/* ~/home/$USER/.config/nvim/
mkdir /home/$USER/.config/scripts
sudo cp scripts/* ~/.config/scripts/

echo "A Script lefutott köszönöm hogy használtad/The script successfully executed thanks for using it Author: BalintVoros"
