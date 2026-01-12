{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    shortcut = "s";
    baseIndex = 1;
  };
}
