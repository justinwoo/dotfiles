export WORKON_HOME=~/virtualenvs

VIRTUAL_ENV_WRAPPER=/usr/local/bin/virtualenvwrapper.sh

if test -f $VIRTUAL_ENV_WRAPPER
then
  source $VIRTUAL_ENV_WRAPPER
fi
