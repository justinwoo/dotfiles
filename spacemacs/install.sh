#!/bin/sh

if [[ ! -a ~/.emacs.d ]]
then
  git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi
