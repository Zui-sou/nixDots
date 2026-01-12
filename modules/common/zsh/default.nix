{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellInit = ''
      bindkey -r '^S'
      stty -ixon
    '';
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake 'Nix Dots#nixServer'";
      edit = "nvim";
      sedit = "sudo nvim";
    };

    ohMyZsh = {
      enable = true;
      theme = "";
      plugins = [ "git" ];
    };
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$nix_shell$directory$git_branch$git_status$character";
      direnv = {
        disabled = false;
        format = "[$symbol$loaded] ";
      };
    
      git_status = {
        conflicted = "⚠️ ";
        modified = "✏️ ";
        staged = "✔️ ";
      };

      hostname = {
        ssh_only = true;
        format = "[@$hostname] ";
      };
    };
  };
}

