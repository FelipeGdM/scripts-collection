#!/bin/bash

set -e

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish -y

fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fish -c "fisher install jorgebucaran/nvm.fish"
fish -c "fisher install edc/bass"
fish -c "fisher install jorgebucaran/nvm.fish"

curl -fsSL https://starship.rs/install.sh | bash

mkdir -p ~/.config/fish/
echo "starship init fish | source" > ~/.config/fish/config.fish

sudo chsh -s $(which fish)
