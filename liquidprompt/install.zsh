#!/bin/sh

if [[ ! -a $PROJECTS/liquidprompt ]]
then
  cd $PROJECTS
  git clone https://github.com/nojhan/liquidprompt.git
  source liquidprompt/liquidprompt
fi
