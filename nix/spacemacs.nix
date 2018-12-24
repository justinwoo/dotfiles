#!/usr/bin/env nix-shell
#!nix-shell ./spacemacs.nix --run exit

{ pkgs ? import <nixpkgs> {} }:

let
  melpaPackages = import ./emacs-packages.nix { inherit pkgs; };
  cpPackages = drv: ''
    TARGET=~/.emacs.d/elpa/26.1/develop/
    mkdir -p $TARGET
    SITE_LOCATION=${drv.outPath}/share/emacs/site-lisp/elpa/*
    cp -R --no-preserve=mode $SITE_LOCATION $TARGET
  '';
  copyPackages = builtins.map cpPackages (builtins.attrValues melpaPackages);

in pkgs.stdenv.mkDerivation {
  name = "spacemacs-install";
  src = pkgs.fetchFromGitHub {
    owner = "syl20bnr";
    repo = "spacemacs";
    rev = "8b3a30f2409aa06053b32117504381c4cce1d8db";
    sha256 = "1z1gxm4vghm8h45drdb6s8lg0x10dxlxxbvmf05yymnnfkshy6vg";
  };
  phases = "unpackPhase";
  shellHook = ''
    echo $src
    cp -v -R --no-preserve=mode $src ~/.emacs.d
    ${builtins.toString copyPackages}
  '';
}
