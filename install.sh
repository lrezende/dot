#!/bin/bash

DOTDIR=~/dot

ln -v -s -f ${DOTDIR}/bashrc ~/.bashrc
ln -v -s -f ${DOTDIR}/bash_aliases ~/.bash_aliases
ln -v -s -f ${DOTDIR}/tmux.conf ~/.tmux.conf
ln -v -s -f ${DOTDIR}/tmux.dev.conf ~/.tmux.dev.conf
ln -v -s -f ${DOTDIR}/vimrc ~/.vimrc

[[ -d ~/bin ]] || mkdir -v ~/bin
ln -v -s -f ${DOTDIR}/bin/tm ~/bin/tm

[[ -d ~/.config/nvim ]] || mkdir -vp ~/.config/nvim
ln -v -s -f ${DOTDIR}/vimrc ~/.config/nvim/init.vim
