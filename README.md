# Dotfiles

This is repo with my system configuration.

## How does it work?

Implied that all dotfiles stored in `$HOME/dotfiles` directory and have a symlinks in `$HOME`. So you can manage and commit them from one place. Also all the configuration and scripts here are compatible with MacOS and Ubuntu-based Linux systems.

Everything here is configured for my convenience and Ruby/JavaScript development.

I tried to make everything easy to understand, so there are a lot of comments.

Here is:

- script for installing everything from here on empty Linux system
- configured .bashrc and .profile files
- script for installing zsh with configured .zshrc, .zprofile files and extensions
- aliases and some convenient shell functions
- script for installing vim with configured .vimrc and color scheme
- script for installing VS Code with extensions
- gitconfig and global .gitignore

Also:

- bundler config
- .pryrc
- .gemrc

Will be installed:

- basic software (curl, wget, homebrew (for MacOS))
- docker
- rbenv
- postgreSQL

To install **everything** run:

```bash
  cd $HOME
  git clone https://github.com/ARtoriouSs/dotfiles.git
  sudo ./dotfiles/scripts/prepare_system.sh
```

It's not built to be installed by parts or without using symlinks, but every script will work correctly when run separately. So if you have non-empty system or want to install some part of this, you can still run scripts separately or just look through source files to find something useful here. Also check READMEs in other directories for help.
