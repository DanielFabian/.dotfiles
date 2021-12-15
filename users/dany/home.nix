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
  };

  programs.htop.enable = true;
}
