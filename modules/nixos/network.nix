{ config, pkgs, ... }:
{
  networking.hostName = "nixos";

  networking.dhcpcd.enable = false;
  networking.useDHCP = false;
  networking.wireless.enable = false;   # this is wpa_supplicant, must be off

  networking.networkmanager = {
    enable = true;
    wifi.backend = "iwd";
    dns = "systemd-resolved";           # optional, better VPN/split DNS
  };
  networking.wireless.iwd.enable = true;

  # Optional, pairs with dns = "systemd-resolved" above
  services.resolved.enable = true;

  # Needed for many VPNs so return traffic isn't dropped
  networking.firewall.checkReversePath = "loose";
}








