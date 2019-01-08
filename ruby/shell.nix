{ pkgs ? import ../nix/pinned.nix {} }:

pkgs.stdenv.mkDerivation rec {
  name = "ruby-hell";

  buildInputs = with pkgs; [
    ruby_2_5
    libxml2
    libxslt
    zlib
    bzip2
    openssl
    imagemagickBig
    pkgconfig
  ];

  libPath = pkgs.lib.makeLibraryPath buildInputs;

 shellHook = ''
    # export PKG_CONFIG_PATH=${pkgs.libxml2}/lib/pkgconfig:${pkgs.libxslt}/lib/pkgconfig:${pkgs.zlib}/lib/pkgconfig:${pkgs.mysql}/lib/pkgconfig:${pkgs.imagemagickBig}/lib/pkgconfig
    export C_INCLUDE_PATH=${libPath}

    mkdir -p $HOME/.gems
    export GEM_HOME=$HOME/.gems
    export GEM_PATH=$GEM_HOME
    export PATH=$GEM_HOME/bin:$PATH
  '';
}
