#!/bin/zsh

# install python provider
python3 -m pip install --user --upgrade pynvim
python2 -m pip install --user --upgrade pynvim

# install ruby provider
gem install neovim

# install node provider
yarn global add neovim

# install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

