#!/bin/bash

################################
# TESTED WITH UBUNTU 16.04 LTS #
################################

echo "\n*** Creating symlinks..."

DOTFILES=$HOME/.dotfiles

# vim
ln -sf $DOTFILES/vimrc $HOME/.vimrc

# git
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/gitignore_global $HOME/.gitignore_global

# zsh
ln -sf $DOTFILES/zshrc $HOME/.zshrc

# adding local files ?
function localfiles {
 cd $HOME
 ln -s $DOTFILES/local/aliases.local $HOME/.aliases.local
 ln -s $DOTFILES/local/gitconfig.local $HOME/.gitconfig.local
 ln -s $DOTFILES/local/vimrc.local $HOME/.vimrc.local
 ln -s $DOTFILES/local/zshrc.local $HOME/.zshrc.local
 echo "local files installed"
}

# adding my vim plugins ?
function vimplugins {
 cd $HOME/.vim/bundle
 #ctrlp add a hidden bar for searching for files
 git clone https://github.com/ctrlpvim/ctrlp.vim.git ctrlp.vim
 #emmet adds the power of emmet on VIM
 git clone https://github.com/mattn/emmet-vim.git emmet.vim
 #indentline adds a line showing the indentation level for source code  
 git clone https://github.com/Yggdroot/indentLine.git indentLine
 #lexima adds auto-closing all parentheses
 git clone https://github.com/cohama/lexima.vim.git lexima.vim
 #nerdcommenter adds comments on blocks and lines
 git clone https://github.com/scrooloose/nerdcommenter.git nerdcommenter
 #nerdtree adds a sweet tree companion for your projects
 git clone https://github.com/scrooloose/nerdtree.git nerdtree
 #surround add/change/delete all surrounding stuff (parantheses, tags,..)
 git clone https://github.com/tpope/vim-surround.git surround.vim
}

while true; do
    read -p "Do you wish to add the local files ? [y/n]" yn
    case $yn in
        [Yy]* ) localfiles; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer [y]es or [n]o.";;
    esac
done

while true; do
    read -p "Do you wish to add selected vim plugins  ? [y/n]" yn
    case $yn in
        [Yy]* ) vimplugins; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer [y]es or [n]o.";;
    esac
done
