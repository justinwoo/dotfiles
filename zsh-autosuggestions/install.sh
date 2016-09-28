#!/bin/sh

mkdir -p ~/.zsh

if [[ ! -a ~/.zsh/zsh-autosuggestions ]]
then
  git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
else
  cd ~/.zsh/zsh-autosuggestions
  git stash
  git pull
fi
