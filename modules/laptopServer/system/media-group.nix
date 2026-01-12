{ config, pkgs, ... }:

{
  users.groups.media = {};

  users.users.jellyfin.extraGroups = [ "media" ];

  system.activationScripts.mediaDirs = {
    text = ''
      mkdir -p /mnt/disk1/media /mnt/disk2/media
      chown root:media /mnt/disk1/media /mnt/disk2/media
      chmod 2775 /mnt/disk1/media /mnt/disk2/media
    '';
  };
}
