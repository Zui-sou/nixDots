{ config, ... }:

{
  fileSystems."/mnt/storage" = {
    fsType = "fuse.mergerfs";
    device = "/mnt/disk1:/mnt/disk2";

    options = [
     "allow_other" 
     "category.create=mfs"
     "use_ino"
    ];
    depends = [ "/mnt/disk1" "/mnt/disk2" ];
  };
}
