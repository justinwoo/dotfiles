#!/bin/bash

DIR=~/.config/autorandr
TARGET=$DIR/postswitch

if [[ ! -e $TARGET ]]
then
  mkdir -p $DIR
  ln -s "$DOT/autorandr/postswitch" $TARGET
fi
