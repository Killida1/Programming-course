#!/bin/bash

DOTFILES="$HOME/dotfiles"


files=(
  ".bashrc"
  ".bash_logout"
  ".profile"
  ".vimrc"
  ".gitconfig"
  ".config"
  
)

echo "installing dotfiles..."

for file in "${files[@]}"; do
  echo "installing $file"
  ln -sfn "$DOTFILES/$file" "$HOME/$file"
done
echo "Finished Installing symlinks"
