{ ... }:
{
  fileSystems."/" =
    { device = "rpool_9iuez0/nixos/ROOT/default";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/boot" =
    { device = "bpool_9iuez0/nixos/BOOT/default";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/home" =
    { device = "rpool_9iuez0/nixos/DATA/default/home";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/root" =
    { device = "rpool_9iuez0/nixos/DATA/default/root";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/srv" =
    { device = "rpool_9iuez0/nixos/DATA/default/srv";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/usr/local" =
    { device = "rpool_9iuez0/nixos/DATA/default/usr/local";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/log" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/log";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/spool" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/spool";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/nix" =
    { device = "rpool_9iuez0/nixos/DATA/local/nix";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/state" =
    { device = "rpool_9iuez0/nixos/DATA/default/state";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/etc/nixos" =
    { device = "/state/etc/nixos";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/etc/cryptkey.d" =
    { device = "/state/etc/cryptkey.d";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/boot/efis/ata-SAMSUNG_MZNLN256HCHP-000L7_S20GNYAG776356-part1" =
    { device = "/dev/disk/by-uuid/A7E5-57A8";
      fsType = "vfat"; options = [ "x-systemd.idle-timeout=1min" "x-systemd.automount" "noauto" ];
    };

  fileSystems."/boot/efi" =
    { device = "/boot/efis/ata-SAMSUNG_MZNLN256HCHP-000L7_S20GNYAG776356-part1";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/var/games" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/games";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/www" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/www";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/lib/AccountsService" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/lib/AccountsService";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/lib/docker" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/lib/docker";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/lib/nfs" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/lib/nfs";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/lib/lxc" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/lib/lxc";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };

  fileSystems."/var/lib/libvirt" =
    { device = "rpool_9iuez0/nixos/DATA/default/var/lib/libvirt";
      fsType = "zfs"; options = [ "zfsutil" "X-mount.mkdir" ];
    };
}
