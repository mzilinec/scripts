#!/usr/bin/env bash

# use sudo if necessary and support systems with no sudo
command -v sudo &>/dev/null && alias no='sudo' || { [ "$(id -u)" -eq 0 ] && alias no='nop' || { echo "Error: sudo not available and not root"; exit 1; }; }

no apt update
no apt install -y unzip zip less htop poppler-utils jq git tmux

git config --global user.email "zilinec.m@gmail.com"
git config --global user.name "Matus Zilinec"

# Setup nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
no rm -rf /opt/nvim
no tar -C /opt -xzf nvim-linux64.tar.gz
echo '' >> ~/.profile
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.profile
mkdir -p ~/.config/nvim/ && cp ./init.vim ~/.config/nvim/init.vim
