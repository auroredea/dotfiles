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

# Gnome Colors Solarized
cd $SOLARIZED/gnome-terminal-colors-solarized || exit
./set_light.sh

# dircolors Solarized
ln -sf $SOLARIZED/dircolors-solarized/dircolors.ansi-light $HOME/.dircolors

# vim solarized
cd $HOME/.vim/bundle || exit
ln -sf $SOLARIZED/vim-colors-solarized vim-colors-solarized
