#!/bin/sh

mkdir -p ~/code

if [[ ! -a ~/code/z ]]
then
  git clone https://github.com/rupa/z.git ~/code/z
  chmod +x ~/code/z/z.sh
else
  cd ~/code/z
  git pull
fi
