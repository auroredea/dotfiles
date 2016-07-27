#!/bin/bash

################################
# TESTED WITH UBUNTU 15.10 LTS #
################################

echo "\n*** Creating symlinks..."

SOLARIZED=$HOME/.solarized
DOTFILES=$HOME/.dotfiles

# vim
ln -sf $DOTFILES/vimrc $HOME/.vimrc

# git
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig

# zsh
ln -sf $DOTFILES/zshrc $HOME/.zshrc

# Gnome Colors Solarized
cd $SOLARIZED/gnome-terminal-colors-solarized || exit
./set_light.sh

# dircolors Solarized
ln -sf $SOLARIZED/dircolors-solarized/dircolors.ansi-light $HOME/.dircolors

# vim solarized
cd $HOME/.vim/bundle || exit
ln -sf $SOLARIZED/vim-colors-solarized vim-colors-solarized

# adding local files ?

function localfiles {
 cd $HOME
 ln -s $DOTFILES/local/aliases.local $HOME/.aliases.local
 ln -s $DOTFILES/local/gitconfig.local $HOME/.gitconfig.local
 ln -s $DOTFILES/local/vimrc.local $HOME/.vimrc.local
 ln -s $DOTFILES/local/zshrc.local $HOME/.zshrc.local
 cd $HOME/.config/terminator
 ln -s $DOTFILES/local/terminator.local config
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
