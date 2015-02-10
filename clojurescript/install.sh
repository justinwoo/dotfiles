#!/bin/sh

mkdir -p ~/Install

# if no clojurescript, clojurescript
if [[ ! -a ~/Install/clojurescript ]]
then
  git clone https://github.com/clojure/clojurescript.git ~/Install/clojurescript
  cd ~/Install/clojurescript
  ~/Install/clojurescript/script/bootstrap
fi
