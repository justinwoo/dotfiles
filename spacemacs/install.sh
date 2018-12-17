#!/bin/bash

if [[ ! -a ~/.emacs.d ]]
then
  git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
  cd ~/.emacs.d || echo "Didn't clone ~/.emacs.d correctly"
  git co develop
fi

if [[ ! -e "$HOME"/org/local.org ]]
then
  mkdir -p "$HOME"/org
  touch "$HOME"/org/local.org
fi
