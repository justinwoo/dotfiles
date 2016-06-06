#!/bin/sh

mkdir -p ~/Code

if [[ ! -a ~/Code/z ]]
then
  git clone https://github.com/rupa/z.git ~/Code/z
  chmod +x ~/Code/z/z.sh
else
  cd ~/Code/z
  git pull
fi
