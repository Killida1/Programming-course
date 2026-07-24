#!/bin/bash

DOTFILES="$HOME/dotfiles"

files=(
    ".bashrc"
    ".bash_logout"
    ".profile"
)

echo "installing files"
for file in "${files[@]}"; do
    echo "Installing $file"
    ln -sf "$DOTFILES/$file" "$HOME/$file"
done

echo "done installing files"
