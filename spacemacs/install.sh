#!/bin/bash

if [[ ! -e "$HOME"/org/local.org ]]
then
  mkdir -p "$HOME"/org
  touch "$HOME"/org/local.org
fi
