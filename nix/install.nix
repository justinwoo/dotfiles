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
    scrot
    i3status
    feh
    rofi;
  };

  # prefetch-github = pkgs.stdenv.mkDerivation {
  #   name = "prefetch-github";
  #   src = pkgs.fetchurl {
  #     url = "https://github.com/justinwoo/prefetch-github/releases/download/test-travis/prefetch-github.tar.gz";
  #     sha256 = "0kcrr2m2y8mi37bvwhc9k9mr4h08bl90sblff7adssbnk76pg47l";
  #   };
  #   installPhase = ''
  #     mkdir -p $out/bin
  #     install -D -m555 -T prefetch-github $out/bin/prefetch-github
  #   '';
  # };

  prefetch-github = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "prefetch-github";
    rev = "02bf2850b52271b87d59a520c5dd2f1452c1dfa5";
    sha256 = "1vr66wl9kh8vi0qjkl1bbq4pkim4ws8a8hckqgmmcgkwifmxbd9p";
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
    dhall-simple
    dhall-json-simple
    spacchetti-cli;
  };

  gnome3-pkgs = {
    inherit (pkgs.gnome3)
    # nautilus
    eog
    evince;
  };

in   i3-pkgs
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
