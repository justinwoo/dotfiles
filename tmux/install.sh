#!/bin/bash

TARGET=$INSTALLED/tpm
if [[ ! -a $TARGET ]]
then
  git clone https://github.com/tmux-plugins/tpm $TARGET
else
  cd $TARGET
  git stash
  git pull
fi
