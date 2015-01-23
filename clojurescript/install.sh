#!/bin/sh

mkdir -p ~/code

# if no clojurescript, clojurescript
if [[ ! -a ~/code/clojurescript ]]
then
  git clone https://github.com/clojure/clojurescript.git ~/code/clojurescript
  cd ~/code/clojurescript
  ~/code/clojurescript/script/bootstrap
fi
