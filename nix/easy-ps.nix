let
  pkgs = import <nixpkgs> {};

  easyPS = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "c6f4e8c4babe51b30aa44c7f6cac426775ab9afb";
    sha256 = "1bb99qnnisnpin6q6nw1klf7nsjaimgbamfw70c19w0ya0sl15g0";
  });
in easyPS
