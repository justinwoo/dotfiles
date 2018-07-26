# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [[ $- = *i* ]]
then
  source $INSTALLED/liquidprompt/liquidprompt

  export LP_USER=zsh
fi
