#!/usr/bin/env bash
set -e

echo "updating and installing git, curl, wget, zsh, tmux, i3, dmenu, xterm and more..."
sudo apt update
sudo apt install -y git curl wget zsh tmux i3 i3status dmenu xterm autorandr xclip

echo "installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#create alias for configs bare repo
alias configs='/usr/bin/git --git-dir=$HOME/configs/ --work-tree=$HOME'

# Install Neovim 0.12.0-dev (if not available in Ubuntu repos)
echo "Installing Neovim 0.12.0-dev..."
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y neovim
sudo apt install nodejs npm 

# Change the default shell to Zsh
echo "Changing default shell to Zsh..."
chsh -s $(which zsh)

# Source .zshrc in a Zsh session
echo "Sourcing .zshrc in Zsh..."
configs checkout .zshrc
zsh -c "source ~/.zshrc"

echo "installing flatpak and flathub"
sudo apt install flatpak


