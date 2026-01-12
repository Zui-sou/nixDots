{ pkgs , globals, ... }:

{
  programs.git = {
    enable = true;
    user.name = "Zui-Sou";
    user.email = "edanrohner@gmail.com";
    
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
