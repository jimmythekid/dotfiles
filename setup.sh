#!/bin/bash

sudo apt-get install gcc
sudo apt-get install git
sudo apt-get install scala
sudo apt-get install 

sudo apt-get install openjdk-7-jdk



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
