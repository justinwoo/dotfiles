export LP_MARK_DEFAULT="普"
export LP_MARK_GIT="ギ"
export LP_MARK_BATTERY="電"
export LP_MARK_ADAPTER="充"
export LP_MARK_UNTRACKED="異物"
export LP_MARK_STASH="在庫"

# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ ! -z "$PS1" ]
then
  # shellcheck source=/dev/null
  source "$INSTALLED/liquidprompt/liquidprompt";

  if [ -z "$IN_NIX_SHELL"  ]
  then
    export LP_USER=bash
  else
    export LP_USER=nix
  fi
fi
