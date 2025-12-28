#!/usr/bin/env bash
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
rm -rf "$HOME/.Xresources"
# i3
ln -sf "$CURRDIR/i3/config" "$HOME/.config/i3/config"
# tmux
ln -sf "$CURRDIR/tmux/tmux.conf" "$HOME/.tmux.conf"
# neovim
ln -sf "$CURRDIR/nvim" "$HOME/.config/nvim"
# zsh
ln -sf "$CURRDIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$CURRDIR/zsh/.zprofile" "$HOME/.zprofile"
ln -sf "$CURRDIR/zsh/.oh-my-zsh" "$HOME/.oh-my-zsh"
ln -sf "$CURRDIR/.Xresources" "$HOME/.Xresources"
