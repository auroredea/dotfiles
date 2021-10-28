#!/bin/bash

################################
#TESTED WITH LINUX             #
################################

export BIN=applications

rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.vim/bundle
rm -rf $HOME/.dotfiles

cd $HOME
rm .vimrc* .zshrc* .gitconfig*
rm -rf $HOME/$BIN
