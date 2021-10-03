{
  description = "Cue types for the Drill load testing tool";

  inputs = {
    nixpkgs.url      = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url  = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.watchexec
            pkgs.cue
            pkgs.drill
          ];
        };
      }
    );
}
