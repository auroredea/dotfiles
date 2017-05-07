#!/bin/bash

################################
# TESTED WITH UBUNTU 16.04 LTS #
################################

echo "\n*** Creating symlinks..."

export DOTFILES=$HOME/.dotfiles

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
 echo "local files installed !"
}

# adding vim files
function vimplugins {
  mkdir -p $HOME/.vim/bundle 
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
}

while true; do
    read -p "Do you wish to add the local files ? [y/n] " yn
    case $yn in
        [Yy]* ) localfiles; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer [y]es or [n]o ";;
    esac
done

while true; do
    read -p "Do you wish to add selected vim plugins  ? [y/n] " yn
    case $yn in
        [Yy]* ) vimplugins; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer [y]es or [n]o ";;
    esac
done
