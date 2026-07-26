# Dotfiles

## What's here
This repo tracks my personal shell and editor config: `.bashrc`, `.bash_logout`,
`.profile`, `.gitconfig`, `.vimrc`, and `.config`. Instead of configuring a
machine by hand and losing the setup, everything lives here under version
control and gets symlinked into `$HOME`.


## Setup
Clone the repo and run the install script — it symlinks every tracked
config file into `$HOME`, overwriting anything already there:

    git clone git@github.com:Killida1/Programming-course.git ~/dotfiles
    cd ~/dotfiles
    chmod +x install.sh
    ./install.sh

## Notes
- Files under `$HOME` are symlinks pointing back into `~/dotfiles`, not
  copies — edits in either location show up in both, since it's the same
  file on disk.
- `/usr` historically stood for "user" (early Unix kept user home
  directories there before `/home` existed) — not "Unix System Resources,"
  a backronym that's commonly repeated but invented after the fact.
- `install.sh` is idempotent: re-running it just re-creates the same
  symlinks, so it's safe to run again after adding a new dotfile.