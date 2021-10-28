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
echo "Installation GIT, VIM, JQ, TREE, THE SILVER SEARCHER\n"
sudo pacman -S git --noconfirm --needed
sudo pacman -S vim --noconfirm --needed
sudo pacman -S tree --noconfirm --needed
sudo pacman -S jq --noconfirm --needed
sudo pacman -S the_silver_searcher --noconfirm --needed
sudo pacman -S dwdiff --noconfirm --needed

# Clone this repo and change to its directory
git clone https://github.com/auroredea/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles || exit

# symlink it up!
./system/symlink_setup.sh 

# Install zsh and ohmyzsh
echo "Installation ZSH avec OH MY ZSH\n"
sudo pacman -S zsh --noconfirm --needed
chsh -s /bin/zsh
sh -c "$(curl -fsSL \
  https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install pacaur
echo "Installation PACAUR"
cd $HOME/$BIN
git clone git clone https://aur.archlinux.org/pacaur.git
cd pacaur
makepkg -si

echo "\n** Ne pas oublier d'installer ses IDE favoris !"

echo "\n*** [OK]"
