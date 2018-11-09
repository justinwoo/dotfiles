let
  pkgs = import <nixpkgs> {};
  easy-ps = import ./easy-ps.nix;

  i3-pkgs = {
    i3 = pkgs.i3.overrideAttrs (old: rec {
      name = "i3-${version}";
      version = "4.16";

      src = pkgs.fetchurl {
        url = "https://i3wm.org/downloads/i3-4.16.tar.bz2";
        sha256 = "1d2mnryn7m9c6d69awd7lwzadliapd0ahi5n8d0ppqy533ssaq6c";
      };
    });

    inherit (pkgs)
    feh
    rofi;
  };

  ps-pkgs = {
    inherit (easy-ps.inputs)
    purs
    psc-package-simple

    purp
    dhall-simple
    dhall-json-simple
    spacchetti-cli;
  };

in   i3-pkgs
  // ps-pkgs
  // {
    inherit (pkgs)
    rxvt_unicode_with-plugins
    emacs
    neovim
    tmux
    jq
    perl
    perlcritic
    shellcheck
    nix-prefetch-github;
  }
