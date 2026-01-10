#!/usr/bin/env bash
set -e  # Exit on any error
set -o pipefail

echo "🚀 Starting Neovim build from source..."

# --------------------------
# 1. Remove old Neovim
# --------------------------
if command -v nvim &>/dev/null; then
    echo "🗑️ Removing existing Neovim..."
    sudo rm -f "$(which nvim)"
fi

# --------------------------
# 2. Install dependencies (Debian/Ubuntu)
# --------------------------
echo "📦 Installing dependencies..."
sudo apt update
sudo apt install -y \
    ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen git

# --------------------------
# 3. Clone Neovim
# --------------------------
echo "🌱 Cloning Neovim repository..."
if [ -d "neovim" ]; then
    echo "Existing 'neovim' folder found. Pulling latest changes..."
    cd neovim
    git fetch --all
    git checkout stable
    git pull
else
    git clone https://github.com/neovim/neovim.git
    cd neovim
    git checkout stable
fi

# --------------------------
# 4. Build Neovim
# --------------------------
echo "⚙️ Building Neovim..."
make CMAKE_BUILD_TYPE=Release

# --------------------------
# 5. Install Neovim
# --------------------------
echo "📥 Installing Neovim..."
sudo make install

# --------------------------
# 6. Verify installation
# --------------------------
echo "✅ Neovim installed successfully!"
nvim --version

