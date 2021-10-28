#!/bin/bash

################################
# TESTED WITH UBUNTU           #
################################

export BIN=applications

echo "Mise à jour système"
echo "Please use root password"
sudo apt update
sudo apt upgrade -y

echo "Mise à jour Dotfiles"
cd $HOME/.dotfiles
git checkout master && git pull --rebase --autostash

echo "Mise à jour plugins vim"
vim +PluginUpdate +qall

echo "Mise à jour OH-MY-ZSH"
cd $HOME/.oh-my-zsh
git checkout master && git pull --rebase --autostash
