{ config, pkgs, ... }:

{
  home.username = "maboroshi";
  home.homeDirectory = "/home/maboroshi";
  home.stateVersion = "25.11";
  programs.zsh = {
    enable = true;
    shellAliases = {
      test = "echo the test worked";
    };
  };
  home.file.".config/nvim".source = ./config/nvim;
}
