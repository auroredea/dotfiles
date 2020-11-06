#!/bin/bash

################################
# TESTED WITH ARCHLINUX        #
################################

export BIN=applications

echo "Mise à jour système"
echo "Please use root password"
sudo pacman -Syu

echo "Mise à jour Dotfiles"
cd $HOME/.dotfiles
git checkout master && git pull --rebase --autostash

# Vundle
echo "Mise à jour plugins vim"
vim +PluginUpdate +qall

# Oh-My-Zsh
echo "Mise à jour OH-MY-ZSH"
cd $HOME/.oh-my-zsh
git checkout master && git pull --rebase --autostash
