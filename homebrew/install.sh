#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test "$(uname)" = "Darwin"
then
  if test ! $(which brew)
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  echo "  Installing Homebrew for you."
  echo 'time to brew install'
  # Install homebrew packages - what the hell, default is so stupid
  # brew install grc coreutils spark
  brew install $(tr '\n' ' ' < $ZSH/homebrew/packages)
  brew tap d12frosted/emacs-plus
  brew install emacs-plus
  brew linkapps
  echo 'done'
fi

exit 0
