{ pkgs ? import <nixpkgs> {}, ...}:
let hs = pkgs.haskellPackages; in
hs.developPackage {
  root = ./.;
  source-overrides = {
    hs-term-emulator = ../hs-term-emulator;
  };
}
