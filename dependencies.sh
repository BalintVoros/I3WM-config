#!/bin/bash


#Automate fully installer

sudo cp -r i3/   /home/$USER/.config/
sudo cp  -r i3blocks/ /home/$USER/.config/
sudo cp  -r i3status/ /home/$USER/.config/

sudo cp -r Wallpapers/ /home/$USER/Wallpapers
sudo cp -r neofetch/ /home/$USER/.config/
sudo cp -r kitty/ /home/$USER/.config/
sudo cp -r rofi/ /home/$USER/.config/
sudo cp -r  scripts/ home/$USER/.config/


sudo pacman -S git

git clone https://aur.archlinux.org/yay-git.git && cd yay-git

makepkg -si

cd ..
 
sudo pacman -R i3lock
sudo pacman -S acpi bluez-utils bluez blueman qbittorrent zsh lxappearance yad thunar
sudo pacman -S flameshot scrot feh picom kitty rofi libreoffice neovim neofetch
sudo pacman -S pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack alsa-utils playerctl yad
sudo pacman -R xterm
yay -S spotify
yay -S i3lock-color
sudo yay -S discord
yay -S  brave-bin
sudo cp -R capitaine-cursors /usr/share/icons
sudo cp -R kora-grey /usr/share/icons
sudo cp -R VALYRIAN-Total-Steel /usr/share/themes
sudo cp -R fonts/0xProtoNerdFont-Regular.ttf /usr/share/fonts
sudo cp -R fonts/0xProtoNerdFontMono-Regular.ttf /usr/share/fonts
sudo cp -R fonts/0xProtoNerdFontPropo-Regular.ttf /usr/share/fonts

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat

cd ..
cd .config/scripts
sudo chmod +x *


sudo systemctl start bluetooth

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
