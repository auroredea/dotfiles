#!/bin/bash

################################
# UBUNTU VERSION               #
################################

export BIN=applications

# Get information on the newest versions of packages and their dependencies.
echo "Mise à jour des paquets\n"
sudo apt update

# Install useful binaries
echo "Installation GIT, VIM, JQ, TREE, THE SILVER SEARCHER\n"
sudo apt install git -y
sudo apt install vim -y
sudo apt install tree -y
sudo apt install jq -y
sudo apt install silversearcher-ag -y
sudo apt install dwdiff -y

# Clone this repo and change to its directory
git clone https://github.com/auroredea/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles || exit

# symlink it up!
./system/symlink_setup.sh

# Install zsh and ohmyzsh
echo "Installation ZSH avec OH MY ZSH\n"
sudo apt install -y zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL \
  https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "\n** Ne pas oublier d'installer ses IDE favoris !"

echo "\n*** [OK]"
