{ pkgs, ... }:
{
  imports = [
    ../neovim.nix
  ];

  home.packages = with pkgs; [
    alacritty
  ];

  programs.git = {
    enable = true;
    userName = "Daniel Fabian";
    userEmail = "daniel.fabian@integral-it.ch";
    extraConfig = {
      sopsdiffer.textconv = "${pkgs.sops}/bin/sops -d";
    };
  };

  programs.htop.enable = true;
}
