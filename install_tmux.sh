#!/bin/bash

PWD=`pwd`

wget https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz
tar -xvf tmux-2.1.tar.gz ; cd tmux-2.1

./configure && make

sudo make install

ln -sf /usr/local/bin/tmux /usr/bin
if [ -e ~/.tmux.conf ]; then
	rm ~/.tmux.conf
fi

ln -sf ${PWD}/.tmux.conf ~/

rm -rf tmux-2.1  tmux-2.1.tar.gz
