let
  pkgs = import <nixpkgs> {};
  easy-dhall = import ./easy-dhall.nix;
  easy-ps = import ./easy-ps.nix;

  i3-pkgs = {
    i3 = pkgs.i3;
    # old overrides:
    # i3 = pkgs.i3.overrideAttrs (old: rec {
      # name = "i3-${version}";
      # version = "4.16";

      # src = pkgs.fetchurl {
      #   url = "https://i3wm.org/downloads/i3-4.16.tar.bz2";
      #   sha256 = "1d2mnryn7m9c6d69awd7lwzadliapd0ahi5n8d0ppqy533ssaq6c";
      # };
    # });

    inherit (pkgs)
    scrot
    i3status
    feh
    rofi;
  };

  prefetch-github = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "prefetch-github";
    rev = "36c45f85048219f86e870f82fd6d1ba5172e8362";
    sha256 = "1139wjvs9z1aclv8iqkgyspcyqdl457prc8mi7aw1fzfibf8zgp8";
  }) {};

  polyglot = pkgs.stdenv.mkDerivation {
    name = "polyglot";
    src = pkgs.fetchurl {
      url = "https://github.com/vmchale/polyglot/releases/download/0.5.16/poly-x86_64-unknown-linux-icc";
      sha256 = "1c9bk7bkrs39l660077cr356d5r0v0cmyh0swymcm6gy1dsivv4n";
    };

    unpackPhase = ''
      mkdir -p $out/bin
      cp $src $out/bin/polyglot
      chmod +x $out/bin/polyglot
    '';

    dontInstall = true;
  };

  alacritty = pkgs.stdenv.mkDerivation {
    name = "alacritty";
    src = pkgs.fetchurl {
      url = "https://github.com/jwilm/alacritty/releases/download/v0.2.3/Alacritty-v0.2.3-x86_64.tar.gz";
      sha256 = "1xjx4anwxp9drxxm852fh8yz7x6z1giqyapvcn05mpp71qiaqvcx";
    };

    unpackPhase = ''
      mkdir -p $out/bin
      tar xf $src -C $out/bin
      chmod u+w $out/bin/alacritty
    '';

    dontInstall = true;
  };

  ps-pkgs = {
    inherit (easy-ps.inputs)
    purs
    psc-package-simple
    purp
    spacchetti-cli;
  };

  dhall-pkgs = {
    inherit (easy-dhall)
    dhall-simple
    dhall-json-simple
    dhall-bash-simple
    dhall-text-simple;
  };

  gnome3-pkgs = {
    inherit (pkgs.gnome3)
    # nautilus
    eog
    evince;
  };

in   i3-pkgs
  // dhall-pkgs
  // ps-pkgs
  // gnome3-pkgs
  // {
    inherit prefetch-github;
    inherit polyglot;
    inherit alacritty;
    inherit (pkgs)
    noto-fonts-cjk
    gnumake
    emacs
    neovim
    bash-completion
    pavucontrol
    nodejs-10_x
    disper
    autorandr
    tig
    tmux
    fzf
    ripgrep
    fd
    jq
    colormake
    nix-bash-completions
    perl
    perlcritic
    shellcheck
    jupyter
    zlib
    zlibStatic;

    inherit(pkgs.gitAndTools)
    git-extras
    hub;
  }
