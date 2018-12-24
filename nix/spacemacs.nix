#!/usr/bin/env nix-shell
#!nix-shell ./spacemacs.nix --run "cp -r --no-preserve=mode,ownership,timestamp $SPACEMACS_SRC ~/.emacs.d"

{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  name = "spacemacs-install";
  src = pkgs.fetchFromGitHub {
    owner = "syl20bnr";
    repo = "spacemacs";
    rev = "8b3a30f2409aa06053b32117504381c4cce1d8db";
    sha256 = "1z1gxm4vghm8h45drdb6s8lg0x10dxlxxbvmf05yymnnfkshy6vg";
  };
  shellHook = ''
    export SPACEMACS_SRC=$src
  '';
}
