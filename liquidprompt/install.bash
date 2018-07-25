#!/bin/sh

if [[ ! -a $INSTALLED/liquidprompt ]]
then
  cd $INSTALLED
  git clone https://github.com/nojhan/liquidprompt.git
  source liquidprompt/liquidprompt
fi
