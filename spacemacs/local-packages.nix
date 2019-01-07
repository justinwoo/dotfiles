{ pkgs ? import ./pinned.nix {} }:

let
  mkLocalPackageDrv = name: src:
  pkgs.runCommand name {
    inherit src;
  } ''
    TARGET=$out/elisp/${name}
    mkdir -p $TARGET
    cp -vR $src/* $TARGET
  '';
in {

  purescript-mode = mkLocalPackageDrv "purescript-mode-local"
  (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "purescript-mode";
    rev = "a6c7e4cc5ea29cf96478490a57d495e745d6e054";
    sha256 = "0x6w9sgvq3xxxv4fni94acr2q683p81k7ipd7sc27yv8zzj2giyv";
  });

  psc-ide-local = mkLocalPackageDrv "psc-ide-local"
  (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "psc-ide-emacs";
    # warning: uses my-changes
    rev = "bbf6f8bd419e59cbaf5e6708c546ebd4cf750fad";
    sha256 = "0rrc0zairry7pd0xqfxr2ai9dyvbq6b1wnclziyzn72yn9xivpcw";
  });

  nix-mode = mkLocalPackageDrv "nix-mode"
  (pkgs.fetchFromGitHub {
    owner = "nixos";
    repo = "nix-mode";
    rev = "01c53b7ff1b91d65e2ee7db47f6190f3dd89bae9";
    sha256 = "0vcb29d6xv8c1kx3q9hq3bfkrdgm7qlin5753c6cnnk1vra1ksxn";
  });

}
