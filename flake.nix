{
  description = "System config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    sops-nix.url = github:Mic92/sops-nix;
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, home-manager, sops-nix, ... }: 
  let
    system = "x86_64-linux";
    
    pkgs = import nixpkgs {
      inherit system;
      config = { allowUnfree = true; };
    };

  in {

    nixosConfigurations = {
      thinkpad = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
	  ./system/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = { 
              useGlobalPkgs = true;
              useUserPackages = true;
              users.dany = import ./users/dany/home.nix;
            };
          }
          sops-nix.nixosModules.sops
        ];
      };
    };
  };
}
