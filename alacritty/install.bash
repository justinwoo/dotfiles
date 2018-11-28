#!/bin/bash

TARGET=~/.config/alacritty

if [[ ! -e $TARGET ]]
then
  ln -s "$DOT/alacritty" $TARGET
fi
