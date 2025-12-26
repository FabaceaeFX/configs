
#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CURRDIR="$SCRIPT_DIR"


echo "▶ Creating symlinks for configs"

# Ensure config directory exists
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.config/i3"

rm -rf "$HOME/.config/nvim"
rm -rf "$HOME/.zshrc"
rm -rf "$HOME/.zprofile"
rm -rf "$HOME/.oh-my-zsh"
# i3
ln -sf "$CURRDIR/i3/config" "$HOME/.config/i3/config"
# tmux
ln -sf "$CURRDIR/tmux/tmux.conf" "$HOME/.tmux.conf"
# neovim
ln -s "$CURRDIR/nvim" "$HOME/.config/nvim"
# zsh
ln -s "$CURRDIR/zsh/.zshrc" "$HOME/.zshrc"
ln -s "$CURRDIR/zsh/.zprofile" "$HOME/.zprofile"
ln -s "$CURRDIR/zsh/.oh-my-zsh" "$HOME/.oh-my-zsh"
