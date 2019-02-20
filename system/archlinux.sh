#!/bin/bash

################################
#TESTED WITH ARCH LINUX/MANJARO#
################################

export BIN=applications

# Get information on the newest versions of packages and their dependencies.
echo "Mise à jour des paquets et installation base-devel\n"
su root -c 'pacman -Syu'
su root -c 'pacman -S base-devel --noconfirm --needed'

# Create BIN directory if no exists
mkdir $HOME/$BIN

# Install useful binaries
echo "Installation GIT, VIM, JQ, TMUX and GLANCES\n"
su root -c 'pacman -S git --noconfirm --needed'
su root -c 'pacman -S vim --noconfirm --needed'
su root -c 'pacman -S tree --noconfirm --needed'
su root -c 'pacman -S jq --noconfirm --needed'
su root -c 'pacman -S tmux --noconfirm --needed'
su root -c 'pacman -S glances --noconfirm --needed'
su root -c 'pacman -S the_silver_searcher --noconfirm --needed'

# Clone this repo and change to its directory
git clone https://github.com/auroredea/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles || exit

# symlink it up!
./system/symlink_setup.sh

# Installing Yaourt
echo "Installation de Yaourt pour AUR."
cd $HOME/$BIN
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si --noconfirm --needed
cd $HOME/$BIN
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm --needed

# Installation diff-so-fancy
cd $HOME/$BIN
git clone https://github.com/so-fancy/diff-so-fancy.git
cd diff-so-fancy
makepkg -si --noconfirm --needed
echo "\n*** Ne pas oublier d'ajouter $HOME/$BIN/diff-so-fancy au PATH"

# Install zsh and oh-my-zsh
echo "Installation ZSH avec OH-MY-ZSH\n"
su root -c 'pacman -S zsh --noconfirm --needed'
chsh -s $(which zsh)
sh -c "$(curl -fsSL \
  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "\n** Ne pas oublier d'installer ses IDE favoris (et tilix) !"

echo "\n*** [OK]"
