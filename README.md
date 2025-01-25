# Overview
![My setup](screenshots/my-setup.png)

# Description

This repository contains my dotfiles. They are aimed at maximum productivity, both in daily routine and in development.

## Requirements

### Basic Dependencies
- git
- curl
- neovim (>= 0.8.0)
- zsh
- alacritty
- i3/i3status

### Optional but Recommended
- ripgrep (for telescope.nvim)
- fd-find (for telescope.nvim)
- A nerd font (for icons)

### Language Servers (for Neovim)
- typescript-language-server
- pyright
- rust-analyzer

### Version Managers
- nvm for Node.js
- pyenv for Python
- rustup for Rust

### Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles

# Install requirements
cd ~/.dotfiles
chmod +x install-requirements.sh
./install-requirements.sh

# Create symlinks
./install.sh
```

### Additional tips:
1. Check versions of critical tools:
```bash
# Add to install-requirements.sh
check_versions() {
    echo "Neovim version: $(nvim --version | head -n1)"
    echo "Node version: $(node --version)"
    echo "Python version: $(python --version)"
    echo "Rust version: $(rustc --version)"
}
```

2. If you use macOS:
```bash
# Brewfile
tap "homebrew/bundle"
tap "homebrew/cask-fonts"

# CLI tools
brew "neovim"
brew "ripgrep"
brew "fd"

# Apps
cask "alacritty"

# Fonts
cask "font-fira-code-nerd-font"
```

## Version Managers

### Node Version Manager (nvm)
NVM allows you to install and manage multiple versions of Node.js.

**Installation:**
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
After installation, you can install Node.js versions like this:
```bash
nvm install node # Install latest Node.js
nvm install 14   # Install Node.js version 14
```
