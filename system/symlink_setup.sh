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

while true; do
    read -p "Do you wish to add the local files ? [y/n]" yn
    case $yn in
        [Yy]* ) localfiles; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer [y]es or [n]o.";;
    esac
done
