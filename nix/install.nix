let
  easy-ps = import ./easy-ps.nix;
in {
  inherit (easy-ps.inputs)
    purs
    psc-package-simple

    purp
    dhall-simple
    dhall-json-simple
    spacchetti-cli;
}
