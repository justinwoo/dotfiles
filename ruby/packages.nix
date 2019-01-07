{ pkgs ? import ../nix/pinned.nix {} }:

{
  inherit (pkgs)
  ruby_2_5;
}
