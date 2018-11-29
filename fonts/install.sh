if [[ ! -e ~/.fonts && -e ~/.nix-profile/share/fonts ]]
then
  ln -s ~/.nix-profile/share/fonts ~/.fonts
fi
