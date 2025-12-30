#!/usr/bin/env bash
set -e

echo "updating and installing git, curl, wget, zsh, tmux, i3, dmenu, xterm and more..."
sudo apt update
sudo apt install -y git curl wget zsh tmux i3 i3status dmenu xterm

# Backup your custom .zshrc if it exists
echo "Backing up custom .zshrc..."
if [ -f $HOME/.zshrc ]; then
    cp $HOME/.zshrc $HOME/.zshrc.bak
fi

echo "installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "Restoring custom .zshrc..."
if [ -f ~/.zshrc.bak ]; then
    mv ~/.zshrc.bak ~/.zshrc
else
    echo "No backup found. Using the default .zshrc."
fi

# Install Neovim 0.12.0-dev (if not available in Ubuntu repos)
echo "Installing Neovim 0.12.0-dev..."
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y neovim

# Change the default shell to Zsh
echo "Changing default shell to Zsh..."
chsh -s $(which zsh)

# Source .zshrc in a Zsh session
echo "Sourcing .zshrc in Zsh..."
zsh -c "source ~/.zshrc"

