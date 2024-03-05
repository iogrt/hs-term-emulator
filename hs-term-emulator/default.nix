{ pkgs ? import <nixpkgs> {}, ...}:
let hs = pkgs.haskellPackages; in
hs.developPackage {
    root = ./.; #"hs-term-emulator" ./. {}
}
