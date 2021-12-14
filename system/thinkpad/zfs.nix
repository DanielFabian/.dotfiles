{ config, pkgs, ... }:

{ boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "2f55d4c0";
  boot.zfs.devNodes = "/dev/disk/by-id";
  boot.kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;
  swapDevices = [
    { device = "/dev/disk/by-id/ata-SAMSUNG_MZNLN256HCHP-000L7_S20GNYAG776356-part4"; randomEncryption.enable = true; }
  ];
  boot.loader = {
    generationsDir.copyKernels = true;
    ##for problematic UEFI firmware
    #grub.efiInstallAsRemovable = true;
    #efi.canTouchEfiVariables = false;
    ##if UEFI firmware can detect entries
    efi.canTouchEfiVariables = true;
    efi.efiSysMountPoint = "/boot/efi";
    grub.enable = true;
    grub.version = 2;
    grub.copyKernels = true;
    grub.efiSupport = true;
    grub.zfsSupport = true;
    # for systemd-autofs
    grub.extraPrepareConfig = ''
      mkdir -p /boot/efis /boot/efi
      for i in  /boot/efis/*; do mount $i ; done
      mount /boot/efi
    '';
    grub.extraInstallCommands = ''
       export ESP_MIRROR=$(mktemp -d -p /tmp)
       cp -r /boot/efi/EFI $ESP_MIRROR
       for i in /boot/efis/*; do
        cp -r $ESP_MIRROR/EFI $i
       done
       rm -rf $ESP_MIRROR
    '';
    grub.devices = [
      "/dev/disk/by-id/ata-SAMSUNG_MZNLN256HCHP-000L7_S20GNYAG776356"
    ];
  };
}
