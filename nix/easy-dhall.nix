let
  pkgs = import <nixpkgs> {};

in import (pkgs.fetchFromGitHub {
  owner = "justinwoo";
  repo = "easy-dhall-nix";
  rev = "bd6baadd52a866b2e52aae05c623fe503b6a0e40";
  sha256 = "0l1rgdd6wv7ypn42xb7003a11jwnppw21glzhiw4qyv4bvmwsikz";
}) {}
