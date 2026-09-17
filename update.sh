#!/bin/sh

rm config/* -r
rm Nix/ -r

cp ~/.config/alacritty config/ -r
cp ~/.config/btop config/ -r
cp ~/.config/fastfetch/ config/ -r
cp ~/.config/fuzzel config/ -r
cp ~/.config/mimeapps.list config/
cp ~/.config/sway config/ -r
cp ~/.config/swaylock config/ -r
cp ~/.config/swaync config/ -r
cp ~/.config/swayosd config/ -r
# cp ~/.config/Vencord config/ -r
mkdir config/Vencord
cp ~/.config/vesktop/settings/ config/Vencord/ -r
cp ~/.config/vesktop/themes/ config/Vencord/ -r
cp ~/.config/waybar config/ -r
cp ~/.config/wlogout config/ -r
cp ~/.config/wpaperd config/ -r
cp ~/.config/yazi config/ -r
cp ~/Nix . -r

# cp ~/.zshrc zsh/ -r
# cp ~/.oh-my-zsh/themes/cocos-theme.zsh-theme zsh/ -r
