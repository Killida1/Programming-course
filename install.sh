#!/bin/bash

DOTFILES="$HOME/00-foundations-project/0.1-dotfiles-repo"


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