#!/usr/bin/env bash

CURDIR=$(cd $(dirname $0) && pwd)
echo ${CURDIR}

ln -snfv --suffix=_$(date +%Y%m%d%H%M%S) ${CURDIR}/dotfiles/.inputrc $HOME/.inputrc
ln -snfv --suffix=_$(date +%Y%m%d%H%M%S) ${CURDIR}/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -snfv --suffix=_$(date +%Y%m%d%H%M%S) ${CURDIR}/dotfiles/.vimrc $HOME/.vimrc

#ll $HOME/target.txt



