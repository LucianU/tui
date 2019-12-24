let
  pkgs = import <nixpkgs> { };
  tui = pkgs.haskellPackages.callPackage ./package.nix { };
in
  {
    tui = tui;
    devel = pkgs.haskellPackages.ghc.withPackages (pkgs: with pkgs; [ tui ghcid ]);
  }
