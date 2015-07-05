#!/bin/bash

###############################
#
#  Author:  JMcErlain
#  Date:    2015-06-05
#  Notes:   Bootstrap server config for
#           .dotfiles on remote servers
#
#
###############################


sudo apt-get install gcc
sudo apt-get install git
sudo apt-get install scala
sudo apt-get install emacs
sudo apt-get install openjdk-7-jdk

sudo rm -rf ~/.emacs.d

git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d


echo "making .dotfile directory"
mkdir .dotfiles
#cd .dotfiles

echo "cloning in the remote repo"
git clone git@github.com:jimmythekid/dotfiles.git ~/.dotfiles
cd .dotfiles
rm -R .dotfiles/vim/bundle


echo "pulling in NeoBundle packages"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

echo "removing old files and adding sim links to new"
sudo rm -r .vim .vimrc .screenrc .gitconfig
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/screenrc .screenrc
ln -s .dotfiles/gitconfig .gitconfig
ln -s .dotfiles/spacemacs .spacemacs
