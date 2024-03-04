{
  description = "Hs-term-emulator package";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux; in
    {
        hs-term-emulator = import ./hs-term-emulator/default.nix {inherit pkgs;};
        hs-sdl-term-emulator = import (./hs-sdl-term-emulator {inherit pkgs;});

        packages.x86_64-linux.default = self.hs-term-emulator;
    };
}
