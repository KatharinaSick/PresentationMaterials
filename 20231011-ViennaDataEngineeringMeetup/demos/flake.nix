{
  description = "Demo environment for the presentation 'To Containers and Beyond'";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-23.05";
  inputs.systems.url = "github:nix-systems/default";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    systems,
  }:
    flake-utils.lib.eachSystem (import systems)
    (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShells.default = pkgs.mkShell {
        packages = [
          pkgs.kind
          pkgs.kubectl
          pkgs.kubernetes-helm
          pkgs.k9s
        ];
        EDITOR = "vim";
      };
    });
}