#!/usr/bin/env nix-shell
#!nix-shell ./setup.nix --run exit

{ pkgs ? import <nixpkgs> {} }:

let
  elpaDevelop = "~/.emacs.d/elpa/26.1/develop/";
  melpaPackages = import ./melpa-packages.nix { inherit pkgs; };
  cpMelpaPackages = drv: ''
    mkdir -p ${elpaDevelop}
    SITE_LOCATION=${drv.outPath}/share/emacs/site-lisp/elpa/*
    echo "copying $SITE_LOCATION to ${elpaDevelop}"
    cp -R --no-preserve=mode $SITE_LOCATION ${elpaDevelop}
  '';
  copyMelpaPackages = builtins.map cpMelpaPackages (builtins.attrValues melpaPackages);

  brokenPackages = pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "broken-emacs-packages";
    rev = "368471f9ad949a5b7895aa15f76fb5bb02212802";
    sha256 = "0dg0v2as0f0m3pyixbi8jkx7iacsrd3kijwn1ydqyylrsnm0w61v";
  };

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
    echo "copying broken packages"
    cp -R --no-preserve=mode ${brokenPackages.outPath}/* ${elpaDevelop}
    find ${brokenPackages.outPath} -maxdepth 1 -type d \
      -exec cp --no-preserve=mode -vR {} ${elpaDevelop} \;
  '';
}
