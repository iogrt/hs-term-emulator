{ pkgs ? import <nixpkgs> {}, ...}:
let hs = pkgs.haskellPackages; in
hs.callCabal2nix "hs-term-emulator" ./. {}
