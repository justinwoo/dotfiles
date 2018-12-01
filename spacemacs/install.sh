#!/bin/bash

if [[ ! -a ~/.emacs.d ]]
then
  git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
  cd ~/.emacs.d || echo "Didn't clone ~/.emacs.d correctly"
  git co develop
fi
