#!/bin/bash

clear

echo "Cloning szalansky/.dotfiles to $HOME"

git clone git@github.com:szalansky/.dotfiles.git $HOME/.dotfiles

echo "Symlinking .tmux, .gitconf and .vimrc & .vim/colors"

ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitmessage $HOME/.gitmessage
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
ln -sd $HOME/.dotfiles/.vim/colors/ $HOME/.vim/
ln -s $HOME/.dotfiles/.profile $HOME/.profile

echo "Installing Vundle"
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle


