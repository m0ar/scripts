{
  description = "Some simple scripts";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux = {
      colortest = nixpkgs.writeShellScriptBin (builtins.readFile ./colortest.sh);
    };
  };
}
