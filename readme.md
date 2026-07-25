# Dotfiles

## What's here
This project manges dotfiles. bash profiles vim and more to come for personal config on the workstation.
Etc workstation might get tracked in the future in relation to this project.

It's all fun :D

## Setup
Clone the repo and run the install script — it symlinks every tracked
config file into `$HOME`, overwriting anything already there:

    git clone git@github.com:Killida1/Programming-course.git ~/dotfiles
    cd ~/dotfiles
    chmod +x install.sh
    ./install.sh

## Notes
Symlinks. usr stands for unix system resource.
git status
git log -oneline -3
/bin is a symlink to /usr/bin.
