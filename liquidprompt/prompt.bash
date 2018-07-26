# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ ! -z "$PS1" ]
then
  source $INSTALLED/liquidprompt/liquidprompt;

  if [ -z $IN_NIX_SHELL  ]
  then
    export LP_USER=bash
  else
    export LP_USER=nix
  fi
fi
