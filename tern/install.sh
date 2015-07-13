#!/bin/sh

mkdir -p ~/Install

if [[ ! -a ~/Install/tern ]]
then
  git clone https://github.com/marijnh/tern.git ~/Install/tern
else
  cd ~/Install/tern
  git pull
fi

cd ~/Install/tern
npm install
