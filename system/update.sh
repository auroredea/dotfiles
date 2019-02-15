#!/bin/bash

################################
# TESTED WITH ARCHLINUX        #
################################

echo "Mise à jour système"
su root -c 'pacman -Syu'

echo "Mise à jour Dotfiles"
cd $HOME/.dotfiles
git pull

echo "Mise à jour diff-so-fancy"
cd $HOME/applications/diff-so-fancy
git pull

# Vundle
echo "Mise à jour plugins vim"
vim +PluginUpdate +qall
