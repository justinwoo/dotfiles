if test $(which pacman)
then
  sudo pacman -S --noconfirm $(tr '\n' ' ' < $ZSH/pacman/packages)
fi
