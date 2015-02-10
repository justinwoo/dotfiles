#!/bin/sh

mkdir -p ~/Install

if [[ ! -a ~/Install/z ]]
then
  git clone https://github.com/rupa/z.git ~/Install/z
  chmod +x ~/Install/z/z.sh
else
  cd ~/Install/z
  git pull
fi
