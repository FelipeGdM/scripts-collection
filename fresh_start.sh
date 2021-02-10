#!/bin/bash

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish -y

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisherfisher install jorgebucaran/nvm.fish
fisher install edc/bass
fisher install jorgebucaran/nvm.fish

curl -fsSL https://starship.rs/install.sh | bash

echo "starship init fish | source" > ~/.config/fish/config.fish

sudo chsh -s $(which fish)
