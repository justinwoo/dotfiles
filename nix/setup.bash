if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ];
    then "." "$HOME/.nix-profile/etc/profile.d/nix.sh";
fi

export INSTALL_NIX="$HOME/.dotfiles/nix/install.nix"
export SHELL_NIX="$HOME/.dotfiles/nix/shell.nix"
export BASH_COMPLETION_USER_DIR="$HOME/.nix-profile/share/bash-completion/completions"
