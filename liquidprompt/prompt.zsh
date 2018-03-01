# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source $INSTALLED/liquidprompt/liquidprompt
