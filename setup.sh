#!/bin/bash

echo "making .dotfile directory"
mkdir .dotfiles
cd .dotfiles

echo "cloning in the remote repo"
git clone git@github.com:jimmythekid/dotfiles.git .dotfiles

echo "pulling in NeoBundle packages"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

echo "removing old files and adding sim links to new"
rm -r .vim .vimrc .screenrc .gitconfig
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/screenrc .screenrc
ln -s .dotfiles/gitconfig .gitconfig
