{
  description = "Elm Chess Frontend";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-21.05;
  };
  outputs = {
    self,
    nixpkgs,
  } @ inputs: let
    pkgs = import nixpkgs {system = "x86_64-linux";};
  in {
    devShells."x86_64-linux".default = import ./shell.nix {
      inherit pkgs;
    };
  };
}
