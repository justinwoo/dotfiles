let
  pkgs = import <nixpkgs> {};

  easyPS = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "3c61e4e";
    sha256 = "0182jpx1yvn1570vd9lv92y0rbhyszhjrbg5y4g42rzy5nnyxx4c";
  });
in easyPS
