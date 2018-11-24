let
  pkgs = import <nixpkgs> {};

  easyPS = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "68f64fb892f61a6e859a256b45f67ccb03694e26";
    sha256 = "15hkiz725lgzxg68h1r8gv03p6zm1nzwq40phaszryy28h6bifs5";
  });
in easyPS
