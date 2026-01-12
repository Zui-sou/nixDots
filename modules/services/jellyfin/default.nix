{ config, pkgs, ... }:

{
  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };

  systemd.services.jellyfin = {
    requires = [ "mnt-storage.mount" ];
    after = [ "mnt-storage.mount" ];
  };
}
