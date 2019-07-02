#!/bin/bash

################################
# TESTED WITH ARCHLINUX        #
################################

export BIN=applications

echo "Mise à jour système"
echo "Please use root password"
su root -c 'pacman -Syu'

echo "Mise à jour Dotfiles"
cd $HOME/.dotfiles
git pull

# Vundle
echo "Mise à jour plugins vim"
vim +PluginUpdate +qall

# Oh-My-Zsh
cd $HOME/.oh-my-zsh
git pull --autostash
