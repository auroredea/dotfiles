#!/bin/bash

################################
#TESTED WITH ARCH LINUX/MANJARO#
################################

export BIN=applications

# Get information on the newest versions of packages and their dependencies.
echo "Mise à jour des paquets et installation base-devel\n"
sudo pacman -Syu
sudo pacman -S base-devel --noconfirm --needed

# Create BIN directory if no exists
mkdir $HOME/$BIN

# Install useful binaries
echo "Installation GIT, VIM, JQ\n"
sudo pacman -S git --noconfirm --needed
sudo pacman -S vim --noconfirm --needed
sudo pacman -S tree --noconfirm --needed
sudo pacman -S jq --noconfirm --needed
sudo pacman -S the_silver_searcher --noconfirm --needed

# Clone this repo and change to its directory
git clone https://github.com/auroredea/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles || exit

# symlink it up!
./system/symlink_setup.sh

# Installation diff-so-fancy
cd $HOME/$BIN
git clone https://aur.archlinux.org/diff-so-fancy-git.git diff-so-fancy
cd diff-so-fancy
makepkg -si

# Install zsh and oh-my-zsh
echo "Installation ZSH avec OH-MY-ZSH\n"
sudo pacman -S zsh --noconfirm --needed
chsh -s /bin/zsh
sh -c "$(curl -fsSL \
  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "\n** Ne pas oublier d'installer ses IDE favoris (et tilix) !"

echo "\n*** [OK]"
