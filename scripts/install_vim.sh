#!/bin/bash

# install vim
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install neovim
fi

# support tools
gem install neovim
rbenv rehash
npm install -g neovim
python -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pynvim

# symlink for config
ln -sf ~/dotfiles/vim/.vimrc ~/.config/nvim/init.vim

# setup color scheme
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir $HOME/.config/nvim/colors
cp $SCRIPT_PATH/vim/monokai.vim $HOME/.config/nvim/colors/

# install Plug and plugins
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
