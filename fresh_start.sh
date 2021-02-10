#!/bin/bash

set -e

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish -y

curl -sL https://raw.githubusercontent.com/FelipeGdM/scripts-collection/main/utils/fisher_install.sh | fish

curl -fsSL https://starship.rs/install.sh | bash

mkdir -p ~/.config/fish/
echo "starship init fish | source" > ~/.config/fish/config.fish

sudo chsh -s $(which fish)
