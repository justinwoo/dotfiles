{ pkgs ? import <nixpkgs> {} }:

import (pkgs.fetchFromGitHub {
  owner = "justinwoo";
  repo = "easy-purescript-nix";
  rev = "951fed14efbe54fcd9edeab7a1ea45852cabf8dd";
  sha256 = "062q72rkj7f5q1h87swi791j833w79s8ap6kxa2qmymvx69jkkpv";
})
