#!/bin/bash

# Run this from the dotfiles dir
DOTFILES=`pwd`

# zsh
rm ~/.zshrc
ln -s $DOTFILES/zshrc ~/.zshrc

# ranger
rm -r ~/.config
ln -s $DOTFILES/config ~/.config

# vim
rm ~/.vimrc
rm ~/.vim
ln -s $DOTFILES/vimrc ~/.vimrc
ln -s $DOTFILES/vim ~/.vim

# neovim
mkdir -p ~/.config/nvim
rm ~/.config/nvim/init.vim
ln -s $DOTFILES/vimrc ~/.config/nvim/init.vim

# screen
#mv ~/.screenrc ~/.screenrc.old 2> /dev/null
#ln -s $DOTFILES/screenrc ~/.screenrc

# tmux
rm ~/.tmux.conf
ln -s $DOTFILES/tmux.conf ~/.tmux.conf
# ln -s $DOTFILES/tmux ~/.tmux

# dircolors
#mv ~/.dir_colors ~/.dir_colors.old 2> /dev/null
#ln -s $DOTFILES/dircolors/dircolors.ansi-dark ~/.dir_colors

#git submodule update --init

# vim-instant-markdown requires node and rubygems:
# gem install redcarpet pygments.rb
# npm install -g instant-markdown-d

