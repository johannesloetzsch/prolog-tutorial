{
  description = "Prolog tutorial";

  inputs = rec {
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    doclog = {
      url = "github:johannesloetzsch/doclog/html_flat";  ## branch contains a workaround for relative links
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, doclog, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    doclog_pkgs = doclog.packages."${system}";
  in rec {
    packages.${system} = rec {
      default = ci;

      ci = pkgs.mkShell {
        buildInputs = [doclog_pkgs.doclog];
          shellHook = ''
            set -e

            ${doclog_pkgs.doclog}/doclog . ./dist/

            touch ./dist/.nojekyll

            exit
        '';
      };
    };
  };
}
