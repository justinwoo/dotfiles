# Only load Liquid Prompt in interactive shells, not from a script or from scp
[ ! -z "$PS1" ] && source $INSTALLED/liquidprompt/liquidprompt;
