#!/bin/bash

################################
# TESTED WITH ARCHLINUX        #
################################

su root -c 'pacman -Syu'

cd $HOME/.dotfiles
git pull

cd $HOME/applications/diff-so-fancy
git pull

# Vundle
vim +PluginUpdate +qall
