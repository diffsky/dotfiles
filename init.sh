#!/bin/bash

# setup git submodules
owd=$PWD
cd $HOME/.dotfiles
git submodule init
git submodule update

for i in $HOME/.dotfiles/dotfiles/*
do :
  FILE=`basename "$i"`
  LINK="$i"
  ln -sf "$LINK" "$HOME/.$FILE"
done

# # ssh
mkdir -p $HOME/.ssh
cp $HOME/.dotfiles/ssh/config* $HOME/.ssh

if [ "$DOMAIN" = "osx" ];then
  # setup mutt
  rm -f $HOME/.mutt 2> /dev/null
  ln -s $HOME/.dotfiles/mutt $HOME/.mutt
fi

# vim
rm -rf $HOME/.vim
ln -s $HOME/.dotfiles/vim $HOME/.vim

# warn about bash-completion package not installed
if [ ! -f /usr/local/etc/bash_completion ]; then
  echo "warn: package bash completion not present"
fi

echo ".dotfiles init'd"

# source all the bash
source $HOME/.dotfiles/dotfiles/bashrc
echo "sourced .dotfiles"

cd $owd
exit 0
