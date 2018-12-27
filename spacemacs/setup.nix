#!/usr/bin/env nix-shell
#!nix-shell ./setup.nix --run exit

{ pkgs ? import <nixpkgs> {} }:

let
  melpaPackages = import ./melpa-packages.nix { inherit pkgs; };
  cpMelpaPackages = drv: ''
    TARGET=~/.emacs.d/elpa/26.1/develop/
    mkdir -p $TARGET
    SITE_LOCATION=${drv.outPath}/share/emacs/site-lisp/elpa/*
    echo "copying $SITE_LOCATION to $TARGET"
    cp -R --no-preserve=mode $SITE_LOCATION $TARGET
  '';
  copyMelpaPackages = builtins.map cpMelpaPackages (builtins.attrValues melpaPackages);

in pkgs.stdenv.mkDerivation {
  name = "spacemacs-install";
  src = pkgs.fetchFromGitHub {
    owner = "syl20bnr";
    repo = "spacemacs";
    # warning: do not let this update to the useless master branch
    rev = "8b3a30f2409aa06053b32117504381c4cce1d8db";
    sha256 = "1z1gxm4vghm8h45drdb6s8lg0x10dxlxxbvmf05yymnnfkshy6vg";
  };
  phases = "unpackPhase";
  shellHook = ''
    echo $src
    echo "copying $src to ~/.emacs.d"
    cp -TR --no-preserve=mode $src ~/.emacs.d
    ${builtins.toString copyMelpaPackages}
  '';
}
