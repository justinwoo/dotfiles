# shit for slides tooling
let
  pkgs = import <nixpkgs> {};

  src = pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-markdown-beamer-pandoc";
    rev = "6ee438bc9280e3baf1caa98b6aff16d6858abe45";
    sha256 = "1wqziv503ps3i5nawbx4lygh5b2cqqpwlbs6yq3kprgnpbj3j428";
  };

  set = import src;

in pkgs.stdenv.mkDerivation {
  name = "slides-tools";
  phases = ["installPhase"];
  installPhase = "
    mkdir -p $out
    command -v ${set.texlive}/bin/tex
    command -v ${pkgs.pandoc}/bin/pandoc
  ";
}
