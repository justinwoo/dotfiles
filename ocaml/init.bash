#!/usr/bin/env bash
if [[ -f $(command -v opam) ]]
then
  "$HOME/.opam/opam-init/init.sh" > /dev/null 2> /dev/null || true
  eval "$(opam env)"
fi
