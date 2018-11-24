let
  pkgs = import <nixpkgs> {};

  easyPS = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "77e228869cf53e53449f5d883160e5ab59544708";
    sha256 = "1g4a3s1y866387cdkg1dbczlm15jkw3g8ni1xj9yv7zdby24mr87";
  });
in easyPS
