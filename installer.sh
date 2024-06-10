#!/bin/bash

#Automated installer
mkdir /home/$USER/Wallpapers
sudo cp -r i3/   /home/$USER/.config/i3/
sudo cp  -r i3blocks/ /home/$USER/.config/i3blocks/
sudo cp  -r i3status/ /home/$USER/.config/i3status/

sudo cp -r Wallpapers/ /home/$USER/Wallpapers
sudo cp -r neofetch/ /home/$USER/.config/neofetch/
sudo cp -r kitty/ /home/$USER/.config/kitty/
sudo cp -r rofi/ /home/$USER/.config/rofi/
sudo cp -r  Neovim/ ~/home/$USER/.config/nvim/
mkdir /home/$USER/.config/scripts
sudo cp -r  scripts/ ~/.config/scripts/

echo "A Script lefutott köszönöm hogy használtad/The script successfully executed thanks for using it Author: BalintVoros"
