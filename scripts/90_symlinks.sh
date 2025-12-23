
#!/usr/bin/env bash
set -e

echo "▶ Creating symlinks for dotfiles"

# Ensure config directory exists
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.config/i3"

# i3
ln -sf "$HOME/dotfiles/i3/*" "$HOME/.config/i3/config"
# tmux
ln -sf "$HOME/dotfiles/tmux/tmux.conf" "$HOME/.tmux.conf"
# neovim
ln -sf "$HOME/dotfiles/nvim/*" "$HOME/.config/nvim"
# zsh
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/dotfiles/zsh/.zprofile" "$HOME/.zprofile"
