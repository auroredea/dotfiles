#!/bin/bash

################################
#TESTED WITH ARCH LINUX/MANJARO#
################################

export BIN=applications
timeout 2 sudo id && echo "[OK] sudo" || exit

# Get information on the newest versions of packages and their dependencies.
echo "Mise à jour des paquets et installation base-devel\n"
su root -c 'pacman -Syu'
su root -c 'pacman -S base-devel --noconfirm'

# Create BIN directory if no exists
mkdir $HOME/$BIN

# Install useful binaries
echo "Installation GIT, VIM, JQ\n"
su root -c 'pacman -S git --noconfirm'
su root -c 'pacman -S tree --noconfirm'
su root -c 'pacman -S vim --noconfirm'
su root -c 'pacman -S jq --noconfirm'
su root -c 'pacman -S tmux --noconfirm'

# Install zsh and oh-my-zsh
echo "Installation ZSH avec OH-MY-ZSH\n"
su root -c 'pacman -S zsh --noconfirm'
chsh -s $(which zsh)
sh -c "$(curl -fsSL \
  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Adding diff-so-fancy for git log
# See https://github.com/git/git/tree/master/contrib/diff-highlight
echo "Installation du diff-highlight\n"
su root -c 'ln -sf /usr/share/doc/git/contrib/diff-highlight/diff-highlight /bin/'
su root -c 'chmod +x /bin/diff-highlight'
git clone https://github.com/so-fancy/diff-so-fancy $HOME/$BIN/diff-so-fancy
echo "\n*** Ne pas oublier d'ajouter $HOME/$BIN/diff-highlight au PATH"

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
makepkg -si --noconfirm
cd $HOME/$BIN
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm
cd $HOME

echo "\n** Ne pas oublier d'installer ses IDE favoris (et tilix) !"

echo "\n*** [OK]"
