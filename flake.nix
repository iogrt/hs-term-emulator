{
  description = "Hs-term-emulator package";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs"; #?ref=nixos-unstable
  };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux; in
    {
      hs-term-emulator = pkgs.haskellPackages.developPackage {
        root = ./hs-term-emulator;
      };
      hs-sdl-term-emulator = pkgs.haskell.compiler.ghc8107.developPackage {
        root = ./hs-sdl-term-emulator;
      };
        packages.x86_64-linux.default = self.hs-term-emulator;
    };
}
