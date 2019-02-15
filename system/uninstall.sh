#!/bin/bash

################################
#TESTED WITH ARCH LINUX/MANJARO#
################################

export BIN=applications

rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.vim/bundle
rm -rf $HOME/.dotfiles

cd $HOME
rm .vimrc* .zshrc* .tmux.conf .gitconfig* .aliases
rm -rf applications
