#!/bin/sh

# mv .vim .vim_backup

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

