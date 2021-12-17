{ config, ... }:
{
  networking.wireless = {
    enable = true;  # Enables wireless support via wpa_supplicant.
    environmentFile = config.sops.secrets.wifi.path;
    networks."Disc&PoI-WLAN".psk = "@Disc_PoI_WLAN_PSK@";
  };

  sops.secrets.wifi = {};
}

