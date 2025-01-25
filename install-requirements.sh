#!/bin/bash

# System packages (adjust for your package manager)
if command -v apt &> /dev/null; then
    sudo apt update
    xargs sudo apt install -y < requirements/packages.txt
elif command -v pacman &> /dev/null; then
    sudo pacman -Syu
    xargs sudo pacman -S --needed < requirements/packages.txt
fi

# Node.js packages
if command -v npm &> /dev/null; then
    xargs npm install -g < requirements/npm-packages.txt
fi

# Python packages
if command -v pip &> /dev/null; then
    pip install -r requirements/pip-packages.txt
fi

# Rust packages
if command -v cargo &> /dev/null; then
    xargs cargo install < requirements/cargo-packages.txt
fi
