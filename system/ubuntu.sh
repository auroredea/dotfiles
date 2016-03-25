#!/bin/bash

################################
# TESTED WITH UBUNTU 15.10 LTS #
################################

$BINN=Applications

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Get information on the newest versions of packages and their dependencies.
apt-get update

# Install useful binaries
apt-get install git
apt-get install tree

# Install more recent version of Vim
apt-get remove vim-tiny
apt-get install vim

# Install zsh and oh-my-zsh
apt-get install fonts-powerline #prevents font problems
apt-get install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL \
  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Create a folder to hold all the solarized color schemes
mkdir -p ${SOLARIZED:=$HOME/.solarized}

# Download solarized color schemes
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized \
  $SOLARIZED/gnome-terminal-colors-solarized
git clone https://github.com/seebi/dircolors-solarized \
  $SOLARIZED/dircolors-solarized
git clone https://github.com/altercation/vim-colors-solarized.git \
  $SOLARIZED/vim-colors-solarized

# Adding diff-so-fancy for git log
# See https://github.com/git/git/tree/master/contrib/diff-highlight
sudo ln -sf /usr/share/doc/git/contrib/diff-highlight/diff-highlight /bin/
sudo chmod +x /bin/diff-highlight
git clone https://github.com/so-fancy/diff-so-fancy $HOME/$BINN/diff-so-fancy
echo "\n*** Don't forget to add $BINN/diff-highlight to the PATH"

# Clone this repo and change to its directory
#git clone https://github.com/auroredea/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles || exit

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# symlink it up!
./system/symlink_setup.sh

echo "\n*** Finished setting up your system! Logout and login again."
