#!/bin/bash

TARGET=$INSTALLED/z
if [[ ! -a $TARGET ]]
then
  git clone https://github.com/rupa/z.git $TARGET
  chmod +x $TARGET/z.sh
else
  cd $TARGET
  git stash
  git pull
fi
