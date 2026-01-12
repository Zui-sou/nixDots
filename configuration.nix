{ config, lib, pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix
      ./modules/common/common.nix
      ./modules/laptopServer/system.nix
      ./modules/services/services.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixServer";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Denver";

  users.users.maboroshi = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
    zsh
    ripgrep
    tmux
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.11";
}
