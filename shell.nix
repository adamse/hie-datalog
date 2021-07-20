{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.haskell.packages.ghc8104.ghcWithPackages (p: [
      p.ghc
    ]))
    pkgs.souffle
    pkgs.ghcid
  ];
}
