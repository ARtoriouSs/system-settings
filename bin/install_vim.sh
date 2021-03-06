#!/bin/bash

# install nvim
sudo apt update --yes
sudo apt install --yes neovim
sudo apt install --yes python3-neovim

# support tools
sudo gem install neovim
npm install -g neovim
python2 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pynvim

# symlink for config
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/vim/.vimrc ~/.config/nvim/init.vim

# install Plug and plugins
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -u ~/dotfiles/vim/plugins.vim +PlugInstall +qall
