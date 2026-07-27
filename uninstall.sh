#!/bin/bash

files=(
  ".bashrc"
  ".bash_logout"
  ".profile"
  ".vimrc"
  ".gitconfig"
  ".config"
)

echo "removing dotfile symlinks..."

for file in "${files[@]}"; do
  target="$HOME/$file"
  if [ -L "$target" ]; then
    unlink "$target"
    echo "removed symlink $file"
  else
    echo "$file is not a symlink — left alone"
  fi
done
echo "Finished removing symlinks"