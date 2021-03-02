{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  name = "typescript-env";

  buildInputs = with pkgs; [
    nodejs
    nodePackages.typescript
    nodePackages.yarn
    nodePackages.rollup
  ];

  shellHook = "";
}
